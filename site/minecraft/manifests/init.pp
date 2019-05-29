class minecraft {
  file {'/opt/minecraft':
    ensure => directory,
  }
  file {'/opt/minecraft/minecraft_server.jar':
    ensure => file,
	source => 'https://launcher.mojang.com/v1/objects/808be3869e2ca6b62378f9f4b33c946621620019/server.jar',
  }
  package {'java':
    ensure => present,
  }
  file {'/opt/minecraft/eula.txt:
    ensure => file,
	content => 'eula=true',
  }
  file {'/etc/systemd/system/minecraft.service':
    ensure => file,
	source => 'puppet:///modules/minecraft/minecraft.service',
  }
}
