# fixes a file
exec {'replaces wrong php filetype':
  command => 'sed -i "s/.phpp/.php/g" /var/www/html/wp-settings.php',
  path => '/bin/:/sbin/:/usr/bin/:/usr/sbin/'
}
