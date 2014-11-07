class gpo::resetlockout {
  include gpo

  file { 'C:\ProgramData\PuppetLabs\facter\facts.d\resetlockout.ps1':
    source => 'puppet:///modules/gpo/resetlockout.ps1',
    source_permissions => ignore,
  }

  if $::resetlockoutcount < 10 {
    notify { "Out of compliance: ResetLockoutCount": }
  }
} 
