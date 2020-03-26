$Variable_Path = "C:\export\adusersexport.csv"
$Variable_Searchbase = "OU=Enabled_users,OU=Utenti,DC=dainese,DC=net"
$Variable_Delimiter = ","

get-aduser –filter * -SearchBase $Variable_Searchbase -property CN,Company,Department,DisplayName,DistinguishedName,GivenName,Manager,MobilePhone,Name,Office,OfficePhone,Surname,Title | export-CSV $Variable_Path -NoTypeInformation -Delimiter $Variable_Delimiter -Encoding UTF8
