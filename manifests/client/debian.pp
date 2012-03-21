class ntp::client::debian inherits ntp::server::debian{
  File["/etc/ntp.conf"] {
    content => template("ntp/ntp-client.conf.erb"),
  }
}
