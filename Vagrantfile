# -*- mode: ruby -*-
# vi: set ft=ruby :

# Vagrantfile API/syntax version. Don't touch unless you know what you're doing!
VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|
  # All Vagrant configuration is done here. The most common configuration
  # options are documented and commented below. For a complete reference,
  # please see the online documentation at vagrantup.com.

  # Every Vagrant virtual environment requires a box to build off of.
  config.vm.box = "precise64"
  config.vm.box_url = "http://files.vagrantup.com/precise64.box"
  config.omnibus.chef_version = :latest

  #config.vm.provider :virtualbox do |vb|
  #  vb.customize ["modifyvm", :id, "--name", Vagrant "Lamp Stack", "--memory", 512"]
  #end


  # Create a private network, which allows host-only access to the machine
  # using a specific IP.
  config.vm.network "private_network", ip: "192.168.33.10"
  #config.vm.host_name = "www.example.vm"
  config.vm.hostname = 'www.example.vm'
  config.hostmanager.enabled = true
  config.hostmanager.manage_host = true


  # Share an additional folder to the guest VM. The first argument is
  # the path on the host to the actual folder. The second argument is
  # the path on the guest to mount the folder. And the optional third
  # argument is a set of non-required options.
  # config.vm.synced_folder "../data", "/vagrant_data"
  config.vm.synced_folder "data", "/srv/data"
  config.vm.synced_folder "site", "/srv/site"
  #config.vm.share_folder "v-data", "/srv/data", "../data", :nfs => true
  #config.vm.share_folder "v-site", "/srv/site", ".", :nfs => true

  # Enable provisioning with chef solo, specifying a cookbooks path, roles
  # path, and data_bags path (all relative to this Vagrantfile), and adding
  # some recipes and/or roles.
  #
  config.vm.provision "chef_solo" do |chef|
     chef.custom_config_path = "Vagrantfile.chef"
     chef.roles_path = "roles"
     chef.cookbooks_path = ["site-cookbooks", "cookbooks"]
     chef.add_role "vagrant-test-box"
     chef.data_bags_path = "data_bags"
     #chef.add_recipe "mysql"
     #chef.add_role "web"
     #chef.add_role "webserver"
  #
  #   # You may also specify custom JSON attributes:
  #   chef.json = { mysql_password: "foo" }
  end

end
