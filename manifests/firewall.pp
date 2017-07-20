class httpd::firewall (
  $httpd_port = $httpd::httpd_port,
) {
  exec { 'firewall':
    command => "firewall-cmd --permanent --add-port=$httpd_port/tcp",
    path    => ['/usr/bin'],
    subscribe => Package['apache'],
    refreshonly => true,
  } ~>
  exec { 'firewall-restart':
    command => 'firewall-cmd --reload',
    path    => ['/usr/bin'],
    refreshonly => true,
  }
}
