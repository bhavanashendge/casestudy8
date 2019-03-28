class newmodule::installdocker {

package { 'curl':
    ensure => 'installed',
    before => Exec['download docker']
}

exec { 'download docker':
    command => '/usr/bin/curl -fsSL https://download.docker.com/linux/ubuntu/gpg | /usr/bin/sudo apt-key add -'
 }
}
