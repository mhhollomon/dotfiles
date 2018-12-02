#cmd /c mklink $newname $oldname # file
#cmd /c mklink /D $newname $oldname # directory

# Test-Path <path> # -e equivalent

# $env:userprofile # aka $HOME

# dir | ?{$_.LinkType} | select Fullname,linktype,target # i(hard and soft) Links in a directory
# get-childitem -attributes ReparsePoint  | select fullname, target # just soft links

$PSScriptRoot

get-childitem -attributes Directory |
foreach-object {
    write-host "directory = " $_.FullName
    get-childitem $_
}
