class httpd::service (
  $service_name = $httpd::service_name,
  $ensure       = $httpd::ensure,
  $enable       = $httpd::enable,
) {
  service { 'apache':
    name       => $service_name,
    ensure     => $ensure,
    enable     => $enable,
    hasstatus  => true,
    hasrestart => true,
  }
}
