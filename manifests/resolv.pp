# resolv.conf contains nameserver information
class dns::resolv ($resolv_file) {
  file { '/etc/resolv.conf' :
      ensure  => present,
      mode    => 0644,
      owner   => 'root',
      group   => 'root',
      content => template($resolv_file),
  }
}
