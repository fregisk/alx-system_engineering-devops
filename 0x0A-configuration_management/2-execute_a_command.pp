# create a manifest that kills a process named killmenow using Puppet
exec {'kill-killmenow':
  command => 'pkill killmenow',
  path    => '/usr/bin';
}
