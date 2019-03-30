class casestudy8::run {
  exec {'Docker run':
        cwd     => '/home/edureka/Downloads/build_repo',
        command => '/usr/bin/docker run  -it -d -p 8091:8080 addressbook'
  }
}
