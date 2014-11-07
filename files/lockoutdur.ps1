import-module grouppolicy

[xml]$dd=get-gporeport "Logoff" -ReportType XML

$c=$dd.gpo.computer.extensiondata.extension.account[1].name
$d=$dd.gpo.computer.extensiondata.extension.account[1].settingnumber
write-host "${c}=${d}"
