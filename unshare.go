package main

import (
	"github.com/opencontainers/runc/libcontainer/system"
	"github.com/rootless-containers/rootlesskit/pkg/child"
	"github.com/rootless-containers/rootlesskit/pkg/parent"
	"os"
	"path/filepath"
)

func unshare() (bool, error) {
	const (
		testEnvKey     = "IMG_RUNNING_TESTS"
		pipeFDEnvKey   = "IMG_UNSHARE_FD"
		dontUnshareKey = "IMG_UNSHARE_KILLSWITCH"
	)
	runningTests := os.Getenv(testEnvKey) != ""
	parentEffectiveUserIsRoot := system.GetParentNSeuid() == 0
	dontUnshare := os.Getenv(dontUnshareKey) != ""
	if dontUnshare || parentEffectiveUserIsRoot || runningTests {
		return false, nil
	}
	iAmChild := os.Getenv(pipeFDEnvKey) != ""
	targetCmd := make([]string, len(os.Args))
	targetCmd[0] = "/proc/self/exe"
	copy(targetCmd[1:], os.Args[1:])
	if iAmChild {
		if err := os.Setenv(dontUnshareKey, "1"); err != nil {
			return false, err
		}
		return false, child.Child(child.Opt{
			PipeFDEnvKey: pipeFDEnvKey,
			TargetCmd:    targetCmd,
			Propagation:  "rprivate",
			Reaper:       false,
		})
	}
	rootlesskitStateDir := filepath.Join(stateDir, "rootlesskit")
	if err := os.Mkdir(rootlesskitStateDir, 0700); err != nil {
		return false, err
	}
	return true, parent.Parent(parent.Opt{
		PipeFDEnvKey: pipeFDEnvKey,
		StateDir:     rootlesskitStateDir,
		Propagation:  "rprivate",
	})
}
