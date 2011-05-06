class ntp::server::debian {
  package {"ntp":
    ensure => present,
  }

  service {"ntp":
    ensure => running,
    enable => true,
    pattern => "/usr/sbin/ntpd",
  }

  file {"/etc/ntp.conf":
    ensure  => present,
    owner   => root,
    group   => root,
    mode    => 0644,
    require => Package["ntp"],
    content => template("ntp/ntp-server.conf.erb"),
    notify  => Service["ntp"],
  }
}
