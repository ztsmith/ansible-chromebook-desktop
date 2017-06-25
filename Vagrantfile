Vagrant.configure("2") do |config|

  config.vm.box = "ubuntu/xenial64"

  config.vm.network "private_network", type: "dhcp"

  config.vm.network :forwarded_port, guest: 22, host: 2422, host_ip: "0.0.0.0", id: "ssh"

  config.vm.provider "virtualbox" do |vb|
    vb.name = "chromebook-ubuntu-desktop"
    vb.memory = "1024"
    vb.gui = true
    vb.customize ["modifyvm", :id, "--natdnshostresolver1", "on"]
    vb.customize ["modifyvm", :id, "--natdnsproxy1", "on"]
    vb.customize ["modifyvm", :id, "--ioapic", "on"]
  end

  config.vm.provision "simulate-chromebook", type: :shell, inline: <<-SHELL
    apt-get install -y xfce4

    # TODO: remove this if possible
    # set password to ubuntu (default password is randomly generated)
    echo -e "ubuntu\nubuntu" | passwd ubuntu

    # TODO: remove this if possible
    useradd zac
    echo -e "ubuntu\nubuntu" | passwd zac
    echo "zac ALL=(ALL) NOPASSWD:ALL" > /etc/sudoers.d/zac
  SHELL

  config.vm.provision "bootstrap", type: :shell, path: "./bootstrap.sh"

  config.vm.provision "ansible", type: "ansible_local" do |ansible|
    ansible.playbook = "setup.yml"
    ansible.inventory_path = "./host"
    ansible.install = false
    ansible.verbose = "v"
  end

end
