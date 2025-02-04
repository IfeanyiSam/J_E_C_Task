#!/bin/bash

echo "Author: Nnanna Samuel Ifeanyi"
echo "Role: DevOps Engineer"
echo "Purpose: This script set up the Project Directory Structure for the necessary Cloud Resources"
echo

# Create the base directory structure
echo "##############################################"
echo "Creating Base Directory Structure"
sleep 3s
mkdir -p infrastructure/terraform/modules/{vpc,security,compute}
echo "successfully created"
echo "##############################################"
sleep 3s

# Create files in the root terraform directory
echo
echo "##############################################"
echo "Creating files in the root terraform directory"
sleep 3s
touch infrastructure/terraform/{main.tf,variables.tf,outputs.tf,terraform.tfvars}
echo "successfully created"
echo "##############################################"
sleep 3s

# Create files in each module directory
echo
echo "##############################################"
echo "Creating files in each module directory"
sleep 3s
for module in vpc security compute; do
    touch infrastructure/terraform/modules/$module/{main.tf,variables.tf,outputs.tf}
done
echo "successfully created"
echo "##############################################"
sleep 3s
echo

# Print success message
echo "Terraform project structure created successfully!"

# Display the directory structure
tree infrastructure/
