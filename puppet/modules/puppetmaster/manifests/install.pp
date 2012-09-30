class puppetmaster::install {
  package { 'puppetmaster' :
    ensure => '2.7.19-1puppetlabs2'
  }
}
