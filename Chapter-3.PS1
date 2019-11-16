# Chapter 3 Lab: Using the help system
# Merrick Dennis


# 1.  Run Update-Help and ensure that it completes without errors, so that you have a copy of the help on your local computer. 
Update-Help -Force


#  2.  Windows-only: can you find any cmdlets capable of converting other cmdlets’ output into HTML?  
Get-Help *HTML*


# 3.  Partially Windows-only: are there any cmdlets that can redirect output into a file, or to a printer? 
Get-Command -Noun file, printer


#  4.  How many cmdlets are available for working with processes? (Hint: remember that cmdlets all use a singular noun.) 
Get-Command -Noun Process


# 5.  What cmdlet might you use to write to an event log? (This one’s possible on non-Windows operating systems, but you’ll get a different answer.) 
Get-Command -verb write -noun *event*

# 6.  You’ve learned that aliases are nicknames for cmdlets; what cmdlets are available to create, modify, export, or import aliases? 
Get-Command -noun Alias

# 7.  Is there a way to keep a transcript of everything you type in the shell, and save that transcript to a text file? 
Get-Command -noun Transcript

# 8.  Windows-only: it can take a long time to retrieve all of the entries from the Security event log. How can you get only the 100 most recent entries? 
Get-Help Get-EventLog -Parameter Newest

# 9.  Windows-only: is there a way to retrieve a list of the services that are installed on a remote computer? 
Get-Help Get-Service -Parameter ComputerName

<# 10.  Is there a way to see what processes are running on a remote computer?  #>
Get-Help Get-Process -Parameter ComputerName

# 11.  Examine the help file for the Out-File cmdlet. The files created by this cmdlet default to a width of how many characters? Is there a parameter that would enable you to change that width? 
80
Get-Help Out-File
Get-Help Out-File -Parameter Width

# 12.  By default, Out-File overwrites any existing file that has the same filename as what you specify. Is there a parameter that would prevent the cmdlet from overwriting an existing file? 
Get-Help Out-File -Parameter Append
Get-Help Out-File -Parameter NoClobber

# 13.  How could you see a list of all aliases defined in PowerShell? 
Get-Help -Noun Alias

# 14.  Using both an alias and abbreviated parameter names, what is the shortest command line you could type to retrieve a list of running processes from a computer named Server1? 

Get-Help Get-Alias
Get-Help Get-Alias -Parameter Definition
Get-Alias -Def *process*
ps -Comp server1

# 15.  How many cmdlets are available that can deal with generic objects? 
Get-Command -Noun Object

# 16.  This chapter briefly mentioned arrays. What help topic could tell you more about them? 
Get-Help about
Get-Help about_Arrays