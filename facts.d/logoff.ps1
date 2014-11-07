import-module grouppolicy
[xml]$dd=get-gporeport "Internal Security Policy" -ReportType XML
$result=$dd.gpo.computer.extensiondata.extension.securityoptions.settingnumber
write-host "logoff=${result}"
