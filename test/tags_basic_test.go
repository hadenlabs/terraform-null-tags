package test

import (
	"testing"

	"github.com/gruntwork-io/terratest/modules/terraform"
	"github.com/stretchr/testify/assert"
)

func TestTagsBasicSuccess(t *testing.T) {
	t.Parallel()

	const NAMESPACE string = "hadenlabs"
	const ENVIRONMENT string = "us-west"
	const STAGE string = "development"
	const NAME string = "jenkins"

	terraformOptions := &terraform.Options{
		TerraformDir: "tags-basic",
		Vars: map[string]interface{}{
			"namespace":   NAMESPACE,
			"environment": ENVIRONMENT,
			"stage":       STAGE,
			"name":        NAME,
		},
	}

	// At the end of the test, run `terraform destroy` to clean up any resources that were created
	defer terraform.Destroy(t, terraformOptions)

	// This will run `terraform init` and `terraform apply` and fail the test if there are any errors
	terraform.InitAndApply(t, terraformOptions)

	outputTags := terraform.OutputMap(t, terraformOptions, "tags")
	outputDelimiter := terraform.Output(t, terraformOptions, "delimiter")
	assert.NotEmpty(t, outputTags, outputTags)
	assert.NotEmpty(t, outputDelimiter, outputDelimiter)
}
