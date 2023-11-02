# Terraforming Mars

## Story

You are living your ordinary earthbound life and you see a white shining Tesla fastly approaching. As it comes closer it drifts in front of you - it’s Elon Musk himself. He was browsing and he was not satisfied with the quality of other websites, except the Ask Mate 3 professional website. Ever since then he thinks you can make the next big step in modern application development, deploying it in WordPress. He leaves with this note in a hurry and drives away into the sunset.

## What are you going to learn?

- How to use an efficient Terraform state file storing solution
- How to use an efficient Terraform state locking solution

## Tasks

1. After we move to the Mars let's clear the Moon
    - Remove all earlier created Terraform resources with Terraform

2. Set S3 and DynamoDB as the backend and locking service for your Terraform project
    - An S3 bucket created from the AWS Console
    - A DynamoDB table created from the AWS Console
    - Your Terraform state file is managed from an S3 bucket
    - Terraform state locking is setup with DynamoDB

3. Host your WordPress website with the help of Terraform. Create the server for your WordPress application using the EC2 resource of Terraform.
    - An EC2 instance using Ubuntu created by Terraform
    - You being able to connect to this instance using SSH

4. Make an RDS for the MySQL database of WordPress
    - Your RDS successfully created with the usage of Terraform
    - You can connect to the database successfully

5. Make an S3 bucket for storing the media files of WordPress
    - Your S3 bucket successfully created with the usage of Terraform
    - Your media files are uploaded to this S3 bucket

6. Configure WordPress on the resources that you created with Terraform
    - Your default WordPress page is reachable by your browser after configuration

## General requirements

None

## Hints

- The way to remove Terraform resources is the destroy them. ```terraform destroy```
- Your S3 bucket for storing the Terraform state file, and your DynamoDB table for Terraform state locking are needed to be done from the AWS Console and not by Terraform because Terraform cannot work with resources that are not created yet
- After setting the state file storing with S3, Terraform asks if it should copy your local Terraform state file to the S3 bucket

## Background materials

- <i class="far fa-exclamation"></i> [Deploy WordPress with Amazon RDS](https://aws.amazon.com/getting-started/hands-on/deploy-wordpress-with-amazon-rds/)
- <i class="far fa-exclamation"></i> [Using Amazon S3 with WordPress to securely deliver media files](https://aws.amazon.com/blogs/compute/deploying-a-highly-available-wordpress-site-on-[…]ing-amazon-s3-with-wordpress-to-securely-deliver-media-files/)
- <i class="far fa-exclamation"></i> [Terraform AWS Provider](https://registry.terraform.io/providers/hashicorp/aws/latest/docs)
