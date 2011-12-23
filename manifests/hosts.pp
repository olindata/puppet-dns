# We have decided to use a source /etc/hosts file for /etc/hosts
# instead of the native 'host' resource type.  It seems to be easier
# to simply copy the same hosts file around instead of allowing puppet
# to manage it with its own resource type.  
define dns::hosts ($hosts_file) {
  file {
    $name :
      ensure => present,
      mode => 0644,
      owner => "root",
      group => "root",
      source => $hosts_file,
  }
}
