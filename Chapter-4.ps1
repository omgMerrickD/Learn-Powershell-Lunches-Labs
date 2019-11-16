# Chapter 4 Lab: Running Commands
# Merrick Dennis

# 1.  Display a list of running processes. 
Get-Process

# 2.  Display the 100 most recent entries from the Application event log. 
Get-EventLog -LogName Application -Newest 100

# 3.  Display a list of all commands that are of the cmdlet type. 
Get-Command -CommandType Cmdlet

# 4.  Display a list of all aliases. 
Get-Alias

# 5.  Make a new alias, so you can run np to launch Notepad from a PowerShell prompt.
Set-Alias -Name "np" -Value Notepad

# 6.  Display a list of services that begin with the letter M. Again, read the help for the necessary command—and don’t forget that the asterisk (*) is a near-universal wildcard in PowerShell. 
Get-Service -DisplayName M*

# 7.  Display a list of all Windows Firewall rules
Get-NetFirewallRule

# 8.  Display a list only of inbound Windows Firewall rules. 
Get-NetFirewallRule -Direction Inbound

