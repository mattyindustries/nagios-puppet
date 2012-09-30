class os::puppet-repo::init {
  #This class will install the Puppet Labs Apt Repository to allow 
  #the installation of more recent versions of puppetmaster.
  File { 
    ensure  => "file",
    owner   => 0,
    group   => 0,
    mode    => 644,
  }
  file { '/etc/apt/sources.list.d/puppetlabs.list':
    source  => "puppet:///modules/os/puppet-repo/puppetlabs.list",
  }

  file { '/etc/apt/trusted.gpg.d/puppetlabs-keyring.gpg':
    source  => "puppet:///modules/os/puppet-repo/puppetlabs-keyring.gpg",
  }
  
  exec { 'apt-update':
    command     => '/usr/bin/apt-get update',
    refreshonly => true,
    subscribe   => File['/etc/apt/sources.list.d/puppetlabs.list']
  }
}
