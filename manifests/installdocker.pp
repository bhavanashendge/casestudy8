class casestudy8::installdocker {
  include apt

  package {
    'curl': ensure => 'installed',
    before => Exec['Add docker gpg key']
  }

  exec { 'Add docker gpg key':
    command => '/usr/bin/curl -fsSL https://download.docker.com/linux/ubuntu/gpg | /usr/bin/sudo apt-key add -'
  }

  apt::ppa { 'ppa:cdekter/ppa ': }

  exec { 'Add docker to APT repo':
      command => '/usr/bin/add-apt-repository "deb [arch=amd64] https: //download.docker.com/linux/ubuntu $(lsb_release -cs) stable"'
  }

  exec { 'Apt get update':
      command => '/usr/bin/sudo apt-get update'
  }

  exec { 'Check policy for docker-ce':
      command => '/usr/bin/apt-cache policy docker-ce'
  }




}
