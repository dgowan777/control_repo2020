node default {
  file {'/root/README':
    ensure => file,
    content => "this is line one\nThis is line two\nThis is line three...",
  }
}
