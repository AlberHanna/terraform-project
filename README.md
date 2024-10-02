![369994440-44494013-6ff5-4b6a-8ae2-db496c296ffc](https://github.com/user-attachments/assets/0809d391-a9ce-4e52-84b6-f39e8a0452e0)
# Terraform Project: AWS Infrastructure with Load Balancers and EC2 Instances

This project is a Terraform configuration that sets up a VPC with public and private subnets, EC2 instances, and load balancers (public and private) on AWS. The Terraform state is stored remotely in an S3 bucket with state locking using DynamoDB.

## Project Overview

### Features:
- VPC with public and private subnets
- EC2 instances in both subnets
- Public Application Load Balancer (ALB) to route traffic to the public instances
- Private Load Balancer to route traffic to the private EC2 instances
- State file stored in S3 with DynamoDB state locking
- Automatic provisioning of EC2 instances using `remote-exec` and `local-exec`
- Remote provisioning of Apache or proxy
- IP addresses written to a file using `local-exec`

### Prerequisites:
- AWS Account
- AWS CLI configured
- Terraform installed (v1.x or higher)
- IAM user with sufficient privileges to create VPC, EC2, and Load Balancer resources

## VPC (Virtual Private Cloud)
![vpc](https://github.com/user-attachments/assets/b7839ecb-6dcd-4ebf-b0c5-99d1a35206cd)

## Load Balancers
1.  Network Load Balancer (NLB):
   ![nlb](https://github.com/user-attachments/assets/225b1300-8fb5-4747-ac26-8db72a7b1426)
2.  Application Load Balancer (ALB):
   ![alb](https://github.com/user-attachments/assets/489c71cc-ac01-4dce-befa-fde2b966e67a)


## Remote bucket for statefile

![fstate](https://github.com/user-attachments/assets/e972273d-7a69-46c5-85ad-ebd9d51c648a)

## Terraform Apply Result
![apply](https://github.com/user-attachments/assets/37a484bc-c0af-403c-a29a-d543bf409905)

## Accessing the DNS
![1](https://github.com/user-attachments/assets/742b86fd-d10d-4603-a56e-2d29674be916)
![2](https://github.com/user-attachments/assets/4c042bb9-926c-486c-93fa-6477164345a7)

## Terraform Destroy
![de](https://github.com/user-attachments/assets/79436faa-b28e-4a29-a39e-dd1d6c9f2e51)


## Project Structure

```bash
terraform-project/
│
├── main.tf                # Main Terraform configuration file
├── variables.tf           # Variables used in the project
├── outputs.tf             # Outputs such as EC2 public/private IPs
├── backend.tf             # S3 and DynamoDB backend configuration
├── modules/
│   ├── instance /
│   ├──loadbalancer/
│   ├──network/
|   ├──subnet/
├──web1/
├──web2/
└── README.md              # Project documentation

