# Increases the amount of traffic an Nginx server can handle.

# Increase the ULIMIT of the default file
exec { 'fix--for-nginx':
  provider => shell,
  command => 'sed -i "s/15/1000000/" /etc/default/nginx'
}
# Restart Nginx
exec { 'nginx-restart':
  provider => shell,
  command => 'nginx restart'
}
