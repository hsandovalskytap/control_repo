class profile::ssh_server {
  package { 'openssh-server':
    ensure => present,
  }
  service { 'sshd':
    ensure => 'running',
    enable => 'true',
  }
  ssh_authorized_key { 'root@master.puppet.vm':
    ensure => present,
    user   => 'root',
    type   => 'ssh-rsa',
    key    => 'AAAAB3NzaC1yc2EAAAADAQABAAABAQDhbbJHLMlGlOQdc3tgMWKsGEvJJNT9Lh6zWlOPpkdHTR+hky81lO+hwAlAu3hcgaIhwJICFbKDLon2XPGz8sxhyd56n8TPKaMOGP/WSvDY+k78aieXmfuWmrvL3C4dfAGgAC0f1LUK4SqO8ScG0ZPYdCKKYAUEq7AHwf2NXgszm9t5ozGP5GqsdBMWyX6lmWdMM29LwgrOisdNEcIRoNFTVfAyIzjX0hPHVe1MT9ZLXW6e35WxoxtpGV23SUyDGEOFVsiAgDJZ52yyenxY0JofyB3TOkNPMvC9TEzR27IQ7lpfTTzpofFXCX4/zDs7kW02tVaLYLHejl3VRphCONTz',
  }
}
