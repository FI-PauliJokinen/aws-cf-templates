
echo 'PATH=$HOME/bin:$PATH' >> .bash_profile
echo 'export PATH'

cd
mkdir bin
cd bin
echo 1. Installing Packer
curl https://releases.hashicorp.com/packer/1.3.3/packer_1.3.3_linux_amd64.zip --output packer_1.3.3_linux_amd64.zip
unzip packer_1.3.3_linux_amd64.zip
cd
# PATH defaults to wrong packer - fixing it here

source .bashrc
packer

cd bin
echo 2. Installing Terraform
curl https://releases.hashicorp.com/terraform/0.11.10/terraform_0.11.10_linux_amd64.zip --output terraform_0.11.10_linux_amd64.zip
unzip terraform_0.11.10_linux_amd64.zip
cd ..

terraform

echo 3. Installing Ansible
sudo amazon-linux-extras install ansible2
ansible --version

