import-module grouppolicy

[xml]$dd=get-gporeport "Internal Security Policy" -ReportType XML

$c=$dd.gpo.computer.extensiondata.extension.account[1].name
$d=$dd.gpo.computer.extensiondata.extension.account[1].settingnumber
write-host "${c}=${d}"
