# roblesnotes-deploy
deploy script for roblesnotes webpage

# how to deploy this project

    sudo apt-get update
    sudo apt-get install software-properties-common -y
    sudo apt-add-repository ppa:ansible/ansible -y
    sudo apt-get update
    sudo apt-get install ansible -y
    git clone https://github.com/Findeton/roblesnotes-deploy.git
    cd roblesnotes-deploy
    time sudo ansible-playbook -i inventory playbook.yml
