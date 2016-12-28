# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|

  config.vm.box = "geerlingguy/ubuntu1604"

  config.vm.hostname = File.basename(Dir.getwd) # current directory

  config.vm.network "forwarded_port", guest: 80, host: 8080
  config.vm.network "forwarded_port", guest: 5432, host: 5432

  config.vm.synced_folder ".", "/var/www/public"

  config.vm.provider "virtualbox" do |vb|
     vb.memory = "256"
  end

  config.vm.provision "shell", path: "provisioning.sh"

end