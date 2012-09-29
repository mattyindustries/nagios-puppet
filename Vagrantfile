# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant::Config.run do |config|
  config.vm.box = "precise64"
  config.vm.box_url = "http://files.vagrantup.com/precise64.box"
  config.vm.provision :puppet do |puppet|
    puppet.manifests_path = "puppet/manifests/"
    puppet.manifest_file  = "site.pp"
    puppet.module_path    = "puppet/modules/"
  end  
  config.vm.define :pm do |pm_config|
    pm_config.vm.host_name = "puppetmaster.local"
  end
  config.vm.define:nagios do |nagios_config|
    nagios_config.vm.host_name = "nagios.local"
  end
end
