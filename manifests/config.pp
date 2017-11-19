class tomcat::config inherits tomcat {

#  file { '/etc/tomcat/tomcat.conf':
#    source => 'puppet:///modules/tomcat/tomcat.conf',
#    owner  => 'tomcat',
#    group  => 'tomcat',
#    mode   => '0644',
#    notify => Service['tomcat']
#   }
  
  file { $::tomcat::config_path:
    content => template('tomcat/tomcat.conf.erb'),
    owner  => $::tomcat::user,
    group  => $::tomcat::group,
    mode   => '0644',
    notify => Service['tomcat'],
  }
}