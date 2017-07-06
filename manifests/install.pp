class httpd::install (
  $package_name = $httpd::package_name,
) {
  package { 'apache':
    name => $package_name,
    ensure => present,
  }
}
