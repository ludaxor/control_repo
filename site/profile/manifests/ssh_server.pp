class profile::ssh_server {
	package {'openssh-server':
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
		key    => 'AAAAB3NzaC1yc2EAAAADAQABAAABAQDZRmtfr27pIKD/dtsVhh+wyPZxPZQ6tSVALrSDD8shrXHkkP/TAqPx3BlN4APdejAxt3gFidE6Uaj2vKmD4T0Eosk87V10m/vtTf4vQIXbYEyge7d2Jc2iFfXD4FXc+xz5Sp1T/SajE2WcaqJEk6ZV1tJ5DJwpNHHJ9gI8QC0dSOJF4s0VEGQoEZd+Kb/R1VYdFnev9hcmn+6jS+mIOHvOd+9vxpXI//tK3l1mpQv8RymYUyzmpfGhl3yCYSmVbaIor2TlcVssOfAG9iX6AR6NWect2qbYNZsNL0un4PoEu2SztZ2qbcEVqzTjxsSR69r4/UTcWhM1Go59ofe+UHRz',
	}  
}
