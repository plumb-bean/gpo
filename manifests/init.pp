class gpo {
  file { ['C:\ProgramData\PuppetLabs\facter','C:\ProgramData\PuppetLabs\facter\facts.d']:
    ensure => directory,
  }
}
