# Import-Export-AD-User-Data
Import/Export AD User Data using Powershell

##Important:
1) Do not modify the first row headers, or the order of the columns.
2) In order to import the script the file must:
	Be located in C:/export/
	Be saved in CSV format using comma (,) delimiters.
	Script must be run on the domain controller server. (any DC will work).


##Notes about Import file fields:
	Do not modify any columns from the export file to the import file that are listed below, the import script will ignore all these fields.
		CN
		DistinguishedName
		ObjectClass
		ObjectGUID
		SamAccountName
		SID
		UserPrincipalName
	For the 'Manager' column, please use the full 'Distinguished Name' of the manager you would like to use.
	You may remove rows that you do not want to edit. This will not delete any users.


##Steps to use scripts:
1) Login to a computer with ADAC control (https://www.varonis.com/blog/active-directory-users-and-computers/), with a user account that has access to DC controller. This can be delegated access. (https://community.spiceworks.com/topic/325904-can-i-delegate-permission-to-change-the-manager-field-in-active-directory)
2) Run the 'Export Enabled Users OU.ps1' script.
3) Open this file located in 'C:/export/adusersexport.csv'.
4) Edit this file to modify the fields indicated in the template file. Be sure to not edit any of the fields listed above.
	Do not add any rows.
	If you do not want to change anything on a user, do not edit the row for that user.
5) Save the file as a csv in 'C:/export/adusersexport.csv'.
6) Run the 'Import Enabled Users OU.ps1' file. This will import only the changes you made.
7) Confirm the changes were made in AD.

##Customizing the script.
###Import:
You can change the "$Variable_Searchbase" variable to a different area so long as it is the in the fully distinguished format.
You can change the fields that get exported by modifying -property. A list of properties is available here: https://docs.microsoft.com/en-us/previous-versions/windows/it-pro/windows-server-2008-R2-and-2008/ee617241(v=technet.10)#parameters
