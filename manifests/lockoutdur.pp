class gpo::lockoutdur {
  include gpo
  file { 'C:\ProgramData\PuppetLabs\facter\facts.d\lockoutdur.ps1':
    source => 'puppet:///modules/gpo/lockoutdur.ps1',
    source_permissions => ignore,
  }

  if $::lockoutduration < 10 {
    notify { "Out of compliance: LockoutDuration": }
  }
} 
