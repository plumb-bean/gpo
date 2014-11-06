import-module grouppolicy
[xml]$dd=get-gporeport "Logoff" -ReportType XML
$result=$dd.gpo.computer.extensiondata.extension.securityoptions.settingnumber
write-host "logoff=${result}"
