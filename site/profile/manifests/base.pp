class profile::base {
  user {'admin':
    ensure => present,
  }
  file { '/root/facter_file':
    ensure => file,
    content => "Host $fqdn\nOS ${os[name]}\nVersion ${os[release][full]}\nKernel $kernelrelease\n",
  }
}
