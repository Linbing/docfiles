-
 ansible-playbook -i inventory/common-node ./yml/chrony.yml -vvvv


-
 ansible -i inventory/common-node server -m ping
#all all host 
 ansible -i inventory/common-node all -m ping
