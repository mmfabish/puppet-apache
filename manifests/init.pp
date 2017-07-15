class httpd (
  $package_name = $httpd::params::package_name,
  $service_name = $httpd::params::service_name,
  $ensure       = $httpd::params::ensure,
  $enable       = $httpd::params::enable,
  $httpd_port   = $httpd::params::httpd_port,
) inherits httpd::params {
  include httpd::install 
  include httpd::service
  include httpd::firewall
}
