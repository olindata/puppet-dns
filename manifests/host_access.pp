# Manages hosts.allow and hosts.deny files.
# Right now, allows ssh access only from local
# networks and specified jumpboxes.
class dns::host_access ($hosts_allow_file, $hosts_deny_file) {
  file { '/etc/hosts.allow' :
      ensure => present,
      mode   => 0644,
      owner  => 'root',
      group  => 'root',
      source => $hosts_allow_file
  }

  file { '/etc/hosts.deny':
      ensure  => present,
      mode    => 0644,
      owner   => 'root',
      group   => 'root',
      content => template($hosts_deny_file)
  }
}
