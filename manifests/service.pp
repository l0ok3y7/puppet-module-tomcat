class tomcat::service inherits tomcat {

  service { $::tomcat::service_name:
    require => Package['tomcat'],
    ensure  => running,
    enable  => true,
  }
  
}
