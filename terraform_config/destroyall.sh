terraform -chdir="jenkins" destroy --auto-approve
terraform -chdir="sonar" destroy --auto-approve
terraform -chdir="nexus" destroy --auto-approve
terraform -chdir="master" destroy --auto-approve
terraform -chdir="node1" destroy --auto-approve
