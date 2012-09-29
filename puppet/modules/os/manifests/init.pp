# This supermodule is used to define all OS standard configurations rather than 
# splitting each submodule into a seperate module.
#
# Each submodule should be placed in a subfolder

class os {
  # Install the Puppet Apt Repo on all servers
  class { 'os::puppet-repo::init' : }
}
