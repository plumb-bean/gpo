import-module grouppolicy

[xml]$dd=get-gporeport "Logoff" -ReportType XML

$e=$dd.gpo.computer.extensiondata.extension.account[2].name
$f=$dd.gpo.computer.extensiondata.extension.account[2].settingnumber
write-host "${e}=${f}"
