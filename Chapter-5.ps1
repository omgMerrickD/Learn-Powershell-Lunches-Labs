# Chapter 5 Lab: Working with providers
# Merrick Dennis

# 1.  In the Registry, go to HKEY_CURRENT_USER\software\microsoft\Windows\-currentversion\explorer. Locate the Advanced key, and set its DontPrettyPath property to 1. 
Set-Location HKCU:/software/microsoft/Windows/-currentversion/explorer
Set-ItemProperty -Path ./Advanced -Name DontPrettyPath -Value 1

# 2.  Create a new directory called C:\Labs.
Set-Location -Path C:\
New-Item -Path '.\' -Name "Labs" -ItemType "directory"

# Book answers below
New-Item -Path c:\Labs -ItemType Directory

# 3.  Create a zero-length file named C:\Labs\Test.txt (use New-Item). 
New-Item -Path "c:\labs" -Name "Test.txt" -ItemType "file" -Force

# 4.  Is it possible to use Set-Item to change the contents of C:\Labs\Test.txt to -TESTING? Or do you get an error? If you get an error, why? 

# This is not possible. The Set-Item cmdlet only operates on variables and registry keys? I don't think that is the right answer

# 5.  Using the Environment provider, display the value of the system environment variable %TEMP%. 
Set-Location Env:
Get-ChildItem -Name Env:\TEMP

# 6.  What are the differences between the -Filter, -Include, and -Exclude parameters of Get-ChildItem? 

# -Filter will specify a filter in the provider's format or language
# -Include will include a string/array in the cmdlet's operation. Effective only when -Recurse is used
# -Exclude will specify a string/array to exlcude from the operation

