$hosts = 'C:\Windows\System32\drivers\etc\hosts'
Copy-Item -Path $hosts -Destination "$hosts.bak" -Force

$blocked_hosts = (Invoke-WebRequest https://raw.githubusercontent.com/StevenBlack/hosts/master/hosts).content
$reddit = @("0.0.0.0 events.redditmedia.com", `
            "0.0.0.0 out.reddit.com")
Set-Content -Path $hosts -Value $blocked_hosts
Add-Content -Path $hosts -Value $reddit
