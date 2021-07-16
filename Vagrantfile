# -*- mode: ruby -*-
# vi: set ft=ruby :
#
Vagrant.configure("2") do |config|
  config.vm.define "router" do |router|
    router.vm.box = "ubuntu/focal64"
    router.vm.hostname = "router"
    router.vm.network :private_network, ip: "10.0.0.1"
    router.ssh.port = 2200
    router.vm.network :forwarded_port, guest: 22, host: 2201, id: 'ssh'
  end

  config.vm.provision :ansible do |ansible|
    ansible.playbook = "./playbooks/base_provision.yaml"
  end

  config.vm.provider "virtualbox" do |vb|
    vb.memory = "1024"
  end
end
