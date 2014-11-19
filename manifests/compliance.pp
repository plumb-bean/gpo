class gpo::compliance {
  include gpo
  
  if $::logoff != 1 {
    notify { "Out of compliance: Logoff": 
      noop => true,
    }
  }

  if $::lockoutbadcount > 10 {
    notify { "Out of compliance: LockoutBadCount": 
      noop => true,
    }
  }

  if $::lockoutduration < 10 {
    notify { "Out of compliance: LockoutDuration": 
      noop => true,
    }
  }

  if $::resetlockoutcount < 10 {
    notify { "Out of compliance: ResetLockoutCount": 
      noop => true,
    }
  }
}
