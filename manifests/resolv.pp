# resolv.conf contains nameserver information
define dns::resolv ($resolv_file) {
  file {
    "/etc/resolv.conf" :
      ensure => present,
      mode => 0644,
      owner => "root",
      group => "root",
      source => $resolv_file,
  }
}