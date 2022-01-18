package test

import (
	"fmt"
	"testing"

	"github.com/gruntwork-io/terratest/modules/terraform"
	"github.com/stretchr/testify/assert"
)

func TestIdFullSuccess(t *testing.T) {
	t.Parallel()

	const NAMESPACE string = "hadenlabs"
	const STAGE string = "development"
	const NAME string = "jenkins"

	terraformOptions := &terraform.Options{
		TerraformDir: "tags-id-full",
		Vars: map[string]interface{}{
			"namespace": NAMESPACE,
			"stage":     STAGE,
			"name":      NAME,
		},
	}

	// At the end of the test, run `terraform destroy` to clean up any resources that were created
	defer terraform.Destroy(t, terraformOptions)

	// This will run `terraform init` and `terraform apply` and fail the test if there are any errors
	terraform.InitAndApply(t, terraformOptions)

	outputName := terraform.Output(t, terraformOptions, "name")
	outputDelimiter := terraform.Output(t, terraformOptions, "delimiter")
	outputTags := terraform.OutputMap(t, terraformOptions, "tags")
	outputIDFull := terraform.Output(t, terraformOptions, "id_full")
	assert.NotEmpty(t, outputTags, outputTags)
	assert.NotEmpty(t, outputDelimiter, outputDelimiter)
	assert.Equal(t, NAME, outputName)
	assert.Equal(t, fmt.Sprintf("%s-%s-%s", NAMESPACE, STAGE, NAME), outputIDFull)
}
