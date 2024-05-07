package main

import (
	"testing"

	testimpl "github.com/launchbynttdata/tf-aws-module_primitive-dns_zone/tests/testimpl"

	"github.com/launchbynttdata/lcaf-component-terratest/lib"
	"github.com/launchbynttdata/lcaf-component-terratest/types"
)

const (
	testConfigsExamplesFolderDefault = "../../examples"
	infraTFVarFileNameDefault        = "test.tfvars"
)

func TestDnsZoneModule(t *testing.T) {

	ctx := types.CreateTestContextBuilder().
		SetTestConfig(&testimpl.ThisTFModuleConfig{}).
		SetTestConfigFolderName(testConfigsExamplesFolderDefault).
		SetTestConfigFileName(infraTFVarFileNameDefault).
		SetTestSpecificFlags(map[string]types.TestFlags{
			"complete": {
				"IS_TERRAFORM_IDEMPOTENT_APPLY": true,
			},
		}).
		Build()

	lib.RunNonDestructiveTest(t, *ctx, testimpl.TestComposableComplete, testimpl.TestNonComposableComplete)
}
