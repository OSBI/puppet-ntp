class ntp::server {
  case $operatingsystem {
    Debian,Ubunru: { include ntp::server::debian }
    default: { fail "Unkown operatingsystem $operatingsystem" }
  }
}
