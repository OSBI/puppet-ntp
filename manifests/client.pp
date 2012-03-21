class ntp::client {
  case $operatingsystem {
    Debian,Ubuntu: { include ntp::client::debian }
    CentOS,RedHat: { include ntp::client::rhel }
    default: { fail "Unknown operatingsystem $operatingsystem" }
  }
}
