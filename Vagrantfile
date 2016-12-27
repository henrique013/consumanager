# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|

  config.vm.box = "geerlingguy/ubuntu1604"

  config.vm.network "private_network", ip: "192.168.56.101"

  config.vm.synced_folder ".", "/var/www/html"

  config.vm.provider "virtualbox" do |vb|
     vb.memory = "256"
  end

  config.vm.provision "shell", path: "provisioning.sh"

end