terraform -chdir="jenkins" apply --auto-approve
terraform -chdir="sonar" apply --auto-approve
terraform -chdir="nexus" apply --auto-approve
terraform -chdir="master" apply --auto-approve
terraform -chdir="node1" apply --auto-approve
