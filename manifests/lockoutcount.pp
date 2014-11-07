class gpo::lockoutcount {
  include gpo

  file { 'C:\ProgramData\PuppetLabs\facter\facts.d\lockoutcount.ps1':
    source => 'puppet:///modules/gpo/lockoutcount.ps1',
    source_permissions => ignore,
  }

  if $::lockoutbadcount > 10 {
    notify { "Out of compliance: LockoutBadCount": }
  }
}
