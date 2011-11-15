class ntp::client::rhel inherits ntp::server::rhel {
  File["/etc/ntp.conf"] {
    content => template("ntp/ntp-client.conf.erb"),
  }
}
