class gpo::logoff {
  include gpo

  file { 'C:\ProgramData\PuppetLabs\facter\facts.d\logoff.ps1':
    source => 'puppet:///modules/gpo/logoff.ps1',
    source_permissions => ignore,
  }

  if $::logoff != 1 {
    notify { "Out of compliance: Logoff": }
  }
} 
