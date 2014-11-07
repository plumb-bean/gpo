class gpo::compliance {
  include gpo
  
  if $::logoff != 1 {
    notify { "Out of compliance: Logoff": }
  }

  if $::lockoutbadcount > 10 {
    notify { "Out of compliance: LockoutBadCount": }
  }

  if $::lockoutduration < 10 {
    notify { "Out of compliance: LockoutDuration": }
  }

  if $::resetlockoutcount < 10 {
    notify { "Out of compliance: ResetLockoutCount": }
  }
}
