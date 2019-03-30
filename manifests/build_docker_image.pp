class casestudy8::build_docker_image{

#Create a manifest to add and build a docker file to create a docker image

  file {'/home/edureka/Downloads/build_repo':
        ensure => 'directory',
        mode => '0777'
  }




}
