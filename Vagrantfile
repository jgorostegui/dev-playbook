Vagrant.require_version ">= 2.2.2"

Vagrant.configure(2) do |config|
  config.vm.box = "ubuntu/bionic64"
  config.vm.network "private_network", ip: "172.30.1.5"
  config.ssh.insert_key = false
  config.vm.provider "virtualbox" do |vb|
    # Display the VirtualBox GUI when booting the machine
    # vb.gui = true  
    # Customize the amount of memory on the VM:
    vb.name = "vmdot"
    vb.memory = "2048"
    vb.cpus = 2
    config.vm.synced_folder ".", "/home/vagrant/dot"
  end
config.vm.provision "shell", inline: <<-SHELL
  # Let's install ansible inside vm
  sudo apt update
  sudo apt install -y python3-pip python3
  pip3 install ansible
  SHELL
end
