$username = "myadmin"
$password = ConvertTo-SecureString "Password123" -AsPlainText -Force

$group = "Administrators"

New-LocalUser -Name $username -Description "My local admin user." -Password $password

Add-LocalGroupMember -Group $group -Member $username