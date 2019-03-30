class casestudy8::build {

#Create a manifest to add and build a docker file to create a docker image

  file {'/home/edureka/Downloads/build_repo':
        ensure => 'directory',
        mode => '0777'
  }

  file {'/home/edureka/Downloads/build_repo/addressbook.war':
      mode => '0777',
      source => "puppet:///modules/casestudy8/addressbook.war"
  }

  file {'/home/edureka/Downloads/build_repo/Dockerfile':
      mode => '0777',
      source => "puppet:///modules/casestudy8/Dockerfile"
  }

  exec {'Docker build':
      cwd     => '/home/edureka/Downloads/build_repo',
      command => '/usr/bin/docker build -t addressbook .'
  }

}
