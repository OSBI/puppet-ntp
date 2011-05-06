class ntp::client {
  case $operatingsystem {
    Debian,Ubuntu: { include ntp::client::debian }
    default: { fail "Unknown operatingsystem $operatingsystem" }
  }
}
