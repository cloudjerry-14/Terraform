# Building Infrastructure provisioning CICD pipeline

- We are creating an AWS EC2 instance using terraform
- The required files to create an AWS instance are in the **terraform** directory

> To create a CICD pipeline using Github actions we have created a ``` .github/workflows/ ``` directory and a file called ``` blank.yaml ```
> All the configurations or the jobs are written in blank.yaml file


Checkout the ``` blank.yml ``` for the CICD configuration https://github.com/cloudjerry-14/Terraform/blob/main/.github/workflows/blank.yml

> We have a total of 8 jobs where we setup terraform and AWS credentials and perform the terraform operations
  * checkout the repository
  * terraform installation and setup
  * aws credentials configuration
  * format terraform code
  * validate the code
  * terraform plan
  * terraform apply
  * terraform destroy
