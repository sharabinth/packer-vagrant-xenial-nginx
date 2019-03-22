# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|
  config.vm.box = "nginx64-vbox.box"

  config.vm.define "vm-nginx64" do |vm1|
    vm1.vm.hostname = "vm-nginx64"
    vm1.vm.network "private_network", ip: "192.168.56.60"
    vm1.vm.network "forwarded_port", guest: 80, host: 9080

    vm1.vm.provider "virtualbox" do |vb|
      vb.name = "vm-nginx64"
    end

    # setup custom shared folder between host and guest
    config.vm.synced_folder "../shared-data", "/vagrant_data"

  end

end
