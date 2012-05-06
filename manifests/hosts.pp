# We have decided to use a source /etc/hosts file for /etc/hosts
# instead of the native 'host' resource type.  It seems to be easier
# to simply copy the same hosts file around instead of allowing puppet
# to manage it with its own resource type.
class dns::hosts ($hosts_file) {
  file { '/etc/hosts' :
    ensure  => present,
    mode    => 0644,
    owner   => 'root',
    group   => 'root',
    content => template($hosts_file),
  }
}
