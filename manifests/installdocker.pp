class casestudy8::installdocker {

  package {
    'curl': ensure => 'installed',
    before => Exec['download docker']
  }

  exec { 'download docker':
    command => '/usr/bin/curl -fsSL https://download.docker.com/linux/ubuntu/gpg | /usr/bin/sudo apt-key add -'
  }

  exec { 'add_docker_repo':
      command => '/usr/bin/add-apt-repository "deb [arch=amd64] https: //download.docker.com/linux/ubuntu $(lsb_release -cs) stable"'
  }

  exec { 'apt-get update':
      command => '/usr/bin/sudo apt-get update'
  }


}
