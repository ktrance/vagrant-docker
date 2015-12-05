# -*- mode: ruby -*-
# vi: set ft=ruby :


Vagrant.configure(2) do |config|
  if defined?(VagrantVbguest::Middleware)
    config.vbguest.auto_update = true
  end
  
  config.vm.box = "ubuntu/trusty64"
  config.vm.box_check_update = false

  config.vm.network "public_network"

  config.vm.provider "virtualbox" do |vb|
    vb.memory = 2048
    vb.cpus = 2
  end

  config.vm.provision "shell", path: 'setup.sh'
end
