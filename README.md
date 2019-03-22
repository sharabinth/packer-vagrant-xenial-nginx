# Purpose

Packer template to create a vagrant image with Ubuntu Xenial 16.04 LTS with NGINX web server.
It also has a Vagrant file to test the newly created image.

## Build Instructions

Clone the repository and then use packer to build the image.  It is a pre-requirement to have Packer installed in the environment.  Please refer to https://www.packer.io/ for further information.

``` bash
$git clone https://github.com/sharabinth/packer-vagrant-xenial-nginx.git
$cd packer-vagrant-xenial-nginx
$packer validate template.json
$packer build template.json
```

The above should create an image named as **nginx64-vbox.box** in the current folder.

## Test Image

There is a Vagrantfile to test the image produced by Packer.

``` bash
$vagrant up
```
The above should create a Virtual Box with the image.  
The NGINX web server should be up and running.

The VM has a static ip address of 192.168.56.60

Test the NGINX web server by accessing http://192.168.56.60  or http://localhost:9080

To perform further operations the do  

``` bash
$vagrant ssh
```
to SSH into the image.

## Test Sync Folders

By default Vagrant shares the current folder in host to /vagrant in the guest.
The provided Vagrantfile syncs a custom host folder with the guest.
The custom host folder is defined one level up the current folder and named as shared-data.  The synced folder in the guest VM is located at /vagrant_data

The definition in the Vagrantfile is shown below.

``` bash
config.vm.synced_folder "../shared-data", "/vagrant_data"
```

To test this create a folder named as *shared-folder* in one level up from the current folder in host and create a file.  Then do ssh into the image and check whether folder */vagrant_data* exists in the VM and check the content of the folder to test the shared file. 

## CI Test

Travis CI is test is integrated with the repo.  When the repo is added in Travis for monitoring then it would test the packer template file for validation.

