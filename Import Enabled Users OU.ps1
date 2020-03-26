<#
This will only change the feilds that are listed. This will not add or delete users.
#>


Import-Module ActiveDirectory

$USERS = Import-CSV c:\export\adusersexport.csv -Delimiter ','

$USERS|Foreach{

Set-ADUSer -Identity $_.samaccountname -Company $_.Company -Department $_.Department -Manager $_.Manager -MobilePhone $_.MobilePhone -Office $_.Office -OfficePhone $_.OfficePhone -Title $_.Title}﻿