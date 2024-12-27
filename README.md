# terraform-ec2-script


This repository contains a Terraform configuration to create an AWS EC2 instance. The following files are included:

- **main.tf**: Contains the main configuration for the EC2 instance.
- **output.tf**: Defines the outputs such as instance details.
- **terraform.tfvars**: Stores the default values for variables like region and instance name.
- **variables.tf**: Declares the variables used in the configuration.

## Prerequisites

- Terraform installed on your local machine.
- An AWS account with programmatic access configured (AWS Access Key and Secret Key).

## Instructions

1. **Modify ****`main.tf`****:**

   - Update the `ami` attribute with the desired AWS AMI ID.
   - Set the `key_name` attribute to the name of your existing SSH key.

2. **Update ****`terraform.tfvars`****:**

   - By default, the region and instance name are defined here:
     ```hcl
     region = "us-east-1"
     instance_name = "Terraform_Example_EC2"
     ```
   - Change these values as needed for your setup.

3. **Initialize and Apply Configuration:**

   - Run the following commands:
     ```bash
     terraform init
     terraform plan
     terraform apply
     ```
   - Review the plan and type `yes` to apply the changes.

4. **Access Your EC2 Instance:**

   - Once the instance is created, use the output from `terraform apply` to retrieve connection details.

## Notes

- Ensure that the provided AWS credentials have sufficient permissions to create resources.
- Clean up resources after use by running:
  ```bash
  terraform destroy
  ```

