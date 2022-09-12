# infra-deploy

This is a small project to practice using Terraform to allocate the necessary infrastructure in AWS and then using Ansible to configure it. In this case, we are deploying a Jenkins and a Web server, and run a Flask application inside a Docker container in the web server.

## Pre-requisites:
- Install Docker
- Install Ansible
- Install Terraform

## Instructions
### Provisioning the servers
1. Generate a new SSH key-pair in AWS (if needed)
2. Download the SSH key, move it to *~/.ssh/* and `chmod 400` it
3. Generate a new access and secret key in AWS (if needed)
4. Configure the access and secret key in you computer (use your method of chice)
5. Modify the **main.tf** files as needed
6. Inside *terraform/jenkins/* run `terraform init`, `terraform plan` and `terraform apply` to create the Jenkins server
7. Inside *terraform/web/* run `terraform init`, `terraform plan` and `terraform apply` to create the web server
### Configuring the servers
1. Create a new file **/etc/ansible/hosts** (sudo rights will be needed)
2. Add a new collection for your web servers and your jenkins server
3. Add your AWS machines' access in the corresponding collection
4. Inside *ansible/* run `ansible-playbook provision_jenkins.yaml`, `ansible-playbook provision_web.yaml` to provision the servers