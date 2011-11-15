class ntp::server::rhel {
  package {"ntp":
    ensure => present,
  }

  service {"ntpd":
    ensure => running,
    enable => true,
  }

  file {"/etc/ntp.conf":
    ensure  => present,
    owner   => root,
    group   => root,
    mode    => 0644,
    require => Package["ntp"],
    content => template("ntp/ntp-server.conf.erb"),
    notify  => Service["ntpd"],
  }
}
