class ntp::server {
  case $operatingsystem {
    Debian,Ubuntu: { include ntp::server::debian }
    default: { fail "Unkown operatingsystem $operatingsystem" }
  }
}
