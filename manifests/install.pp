class tomcat::install inherits tomcat {

  include java
  
  package { $::tomcat::packages:
    ensure  => installed,
    require => Package['epel-release'],
  }
  
}
