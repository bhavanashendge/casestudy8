class casestudy8 {
# create a simple hostname and ip host entry
  host { 'syslog':
    ip => '10.10.10.10',
  }
}
