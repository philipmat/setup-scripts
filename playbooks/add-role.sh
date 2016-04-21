#!/bin/bash
role_name=$1

if [[ -z $role_name ]] ; then
	cat <<ROLE
Usage: $(basename $0) role-name

Adds an ansible role structure.
ROLE
	exit 1
fi

# organized according to Ansible - Best Practices
# http://docs.ansible.com/ansible/playbooks_best_practices.html#directory-layout
for f in defaults files handlers meta tasks templates vars ; do 
	role_dir=roles/$role_name/$f
	mkdir -pv $role_dir
	echo -e "# $f/main.yaml\n---\n" > $role_dir/main.yml
done