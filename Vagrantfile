# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant::Config.run do |config|

  config.vm.define :pm do |pm_config|
    pm_config.vm.box = "precise64"
    pm_config.provision :puppet do |puppet|
      puppet.manifests_path = "puppet/nodes"
      puppet.manifest_file  = "pm.pp"
      puppet.module_path    = "puppet/modules"
    end 
  end
  config.vm.define:nagios do |nagios_config|
    nagios_config.vm.box = "precise64"
    nagios_config.provision :puppet do |puppet|
      puppet.manifests_path = "puppet/nodes"
      puppet.manifest_file  = "nagios.pp"
      puppet.module_path    = "puppet/modules"
    end 
  end
end
