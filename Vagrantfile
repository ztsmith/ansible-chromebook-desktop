Vagrant.configure("2") do |config|

  config.vm.box = "ubuntu/xenial64"

  config.vm.network "private_network", type: "dhcp"

  config.vm.network :forwarded_port, guest: 22, host: 2422, host_ip: "0.0.0.0", id: "ssh"

  config.vm.provider "virtualbox" do |vb|
    vb.name = "ansible-chromebook-desktop"
    vb.memory = "1024"
    vb.gui = true
    vb.customize ["modifyvm", :id, "--natdnshostresolver1", "on"]
    vb.customize ["modifyvm", :id, "--natdnsproxy1", "on"]
    vb.customize ["modifyvm", :id, "--ioapic", "on"]
    vb.customize ["modifyvm", :id, "--clipboard", "bidirectional"]
    vb.customize ["setextradata", "global", "GUI/SuppressMessages", "all" ]
  end

  config.vm.provision "simulate-chromebook", type: :shell, inline: <<-SHELL
    apt-get install -y xfce4
    apt-get install -y xfce4-goodies
    apt-get install -y xserver-xorg-legacy
    echo "needs_root_rights = yes" >> /etc/X11/Xwrapper.config

    # set password to ubuntu (default password is randomly generated)
    echo -e "ubuntu\nubuntu" | passwd ubuntu
  SHELL

end
