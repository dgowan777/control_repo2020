class profile::master_hosts {
  host { 'web.puppet.vm' :
    ensure => 'present',
    ip     => '172.18.0.2',
    target => '/etc/hosts',
  }

  host { 'db.puppet.vm' :
    ensure => 'present',
    ip     => '172.18.0.3',
    target => '/etc/hosts',
  }
}
