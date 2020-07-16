class profile::ssh_server {
  package {'openssh-server':
    ensure  => present,
  }
  service { 'sshd':
    ensure  => 'running',
    enable  => 'true',
  }
  ssh_authorized_key { 'root@master.puppet.vm':
    ensure => present,
    user => 'root',
    type => 'ssh-rsa',
    key => 'AAAAB3NzaC1yc2EAAAADAQABAAABAQCosalKNp/lym+AjbnwyR28CVjWk1ZT5e2MrfyW0u5dnYfnDtWV2XZG7pLkS+LSMN3NMdLS/Y/po/l9DWpjduoPlXSXprAj5gEIIF837Mk9aVmFeaiRDREQfwk3kox9/uURiKMKnoL2y/iXVY0zw2R7ilNQFdfvDlSKvvt1qZwy72/DBEJZC+eCPx8pOts1bSgde9KpD1chAUEhp3pCBb0MzSYaqr1h4/xL4Wxq6uRSJY5pDRMp0DRxHQNtXb+6mb27lmAZWDjZg5KJCcBepXvV0wzEMasN9WcahDETLU8TwZ0w4TqeLBE9wh+fQ639H+AtXo9qoeJGi1TEoCOmaNk/',
  }
}
