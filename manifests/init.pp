class httpd (
  $package_name = $httpd::params::package_name,
  $service_name = $httpd::params::service_name,
  $ensure       = $httpd::params::ensure,
  $enable      = $httpd::params::enable,
) inherits httpd::params {
  include httpd::install 
  include httpd::service
}
