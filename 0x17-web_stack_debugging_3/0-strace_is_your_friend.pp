# Changes phpp to php in a file that caused 500 server error
service { 'apache2':
  ensure => 'running',
  enable => true,
}

exec { 'modify_file':
  command => '/bin/sed -i "s/phpp/php/g" /var/www/html/wp-settings.php',
  notify  => Service['apache2']
}
