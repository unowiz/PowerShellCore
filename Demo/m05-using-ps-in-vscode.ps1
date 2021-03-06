<#-----------------------------------------------------------------------------
  Getting Started with PowerShell Core on Linux and macOS
  Using PowerShell in VSCode

  Author: Robert C. Cain | @ArcaneCode | arcanecode@gmail.com
          http://arcanecode.com
 
  This module is Copyright (c) 2015, 2019 Robert C. Cain. All rights reserved.

  The code herein is for demonstration purposes. No warranty or guarentee
  is implied or expressly granted. 

  This module may not be reproduced in whole or in part without the express
  written consent of the author and/or Pluralsight. It can be used within
  your own projects.
-----------------------------------------------------------------------------#>

# Comments begin with a # (aka hashtag or pound sign)

Get-Command        # Comments can go here too!

<#
  Comment blocks use angle brackets with comment sign
  They can be multiline 
#>

<#----------------------------------------------
  You can have characters after and before the 
  closing brackets
----------------------------------------------#>

<# You can use opening and closing all on the same line #>

#region
  # Put your code here
  Clear-Host
  # More code here
#endregion

#region The Region Title is Optional
  # some code here
#endregion

#region The Region Title is Optional
  # some code here
#endregion The Region Title is Optional

#region The Region Title is Optional
  # some code here
#endregion I can put something different here










#-----------------------------------------------------------------------------#
# Cmdlets
#-----------------------------------------------------------------------------#
#region Cmdlets

# Get-Command - Retrieves a list of all loaded cmdlets
Get-Command

# Can expand by searching for just a verb or noun. Here we
# are using named parameters
Get-Command -verb "get"

Clear-Host
Get-Command -noun "date"

# In the module on the terminal, we showed how Get-Help can be used 
# to explain a command. In this example we are using positional parameters
Get-Help Get-Command

# Looking at the help for Get-Help, we see the first parameter is "Name"
# Thus this:
Get-Help Get-Help

# And this are the same
Get-Help -Name Get-Help

# Get-Help has some switches you can pass in to expand on what it tells you
Get-Help Get-Command -examples
Get-Help Get-Command -detailed
Get-Help Get-Command -full     # Includes both examples and detailed
Get-Help Get-Command -Online   # PS3+ and PS Core 

# Most commands can also be passed a -? paramter to get help
Get-Command -?


#endregion Cmdlets











#-----------------------------------------------------------------------------#
# Alias
#-----------------------------------------------------------------------------#
#region Aliasing

# Notice how some DOS commands work in PowerShell Core on Linux/macOS
dir
cls

# But how? Aren't PowerShell commands supposed to be Verb-Noun? 
# The answer is command aliasing
# The alias dir points to the cmdlet Get-Childitem
Get-Alias dir

# We can see all of the aliases for a cmdlet
Get-Alias -Definition Get-ChildItem

# Another alias for Get-ChildItem was gci
gci

# There are lots of aliases
Get-Alias

# Note: Aliases are fine for command line use or quick prototypes
# For clarity however it is a best practice to use the full cmdlet
# name in all scripts you write.

dir         # Note the lightbulb, this is the autofix

#endregion Aliasing











