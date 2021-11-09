


function checkService{
param($winupdate)
$getservice = Get-Service -Name $winupdate
if($getservice.status -ne 'Running'){
echo "starting service"
Start-Service -Name wuauserv
#Send-MailMessage -To '<arpitapractise@gmail.com>' -Subject 'send alter that service was stopped' #need valid SMTP servername to send mail paramater is -SmtpServer
 }
elseif($getservice.Status -eq 'Running')
{
echo "service is running"
}
}
checkService('wuauserv') # pass any valid service name as agrument 
