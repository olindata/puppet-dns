# Manages hosts.allow and hosts.deny files.
# Right now, allows ssh access only from local
# networks and specified jumpboxes.
class dns::host_access ($hosts_access_file) {
  file { '/etc/hosts.deny':
      ensure  => present,
      mode    => 0644,
      owner   => 'root',
      group   => 'root',
      content => template($hosts_access_file)
  }
}
