# -*- mode: ruby -*-
# vi: set ft=ruby :

# vagrant plugin install vagrant-hostmanager

Vagrant.configure("2") do |config|
  config.hostmanager.enabled = true
  config.hostmanager.manage_host = true
  config.hostmanager.manage_guest = true
  config.hostmanager.ignore_private_ip = false
  config.hostmanager.include_offline = false
  config.vm.define "esdev" do |vbox|
    vbox.vm.box = "puppetlabs/ubuntu-16.04-64-puppet"
    vbox.vm.hostname = "elkdev"
    vbox.vm.network :private_network, ip: '10.0.42.21'
    vbox.vm.provider "virtualbox" do |v, override|
        v.customize ["modifyvm", :id, "--memory", 1024]
        v.customize ["modifyvm", :id, "--cpus", 1]
    end
  end
  config.vm.provision :shell, inline: "ufw disable"
  config.vm.provision :shell, inline: "/bin/bash /vagrant/scripts/config.sh"
end
