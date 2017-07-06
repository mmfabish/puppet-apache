class httpd::params {

  # package configuration
  $package_name = $osfamily ? {
    'RedHat' => 'httpd',
    default => 'apache',
  }

  # service configuration
  $service_name = 'httpd'
  $ensure       = 'running'
  $enable       = true
}
