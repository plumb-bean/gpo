import-module grouppolicy

[xml]$dd=get-gporeport "Logoff" -ReportType XML

$a=$dd.gpo.computer.extensiondata.extension.account[0].name
$b=$dd.gpo.computer.extensiondata.extension.account[0].settingnumber
write-host "${a}=${b}"
