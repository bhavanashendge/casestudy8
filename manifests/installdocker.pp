class casestudy8::installdocker {
  include apt

  package {
    'curl': ensure => 'installed'
  }

  apt::source { 'Add docker to sources':
    comment  => 'This is the iWeb Debian unstable mirror',
    location => 'https://download.docker.com/linux/ubuntu',
    release  => 'stable',
    repos    => '$(lsb_release -cs)',
    architecture => 'amd64',
    pin      => '-10',
    key      => {
      'id'     => 'A1BD8E9D78F7FE5C3E65D8AF8B48AD6246925553',
      'server' => 'https://download.docker.com/linux/ubuntu/gpg',
    },
    include  => {
      'deb' => true,
    },
  }

}
