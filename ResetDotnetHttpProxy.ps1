$flags = [System.Reflection.BindingFlags]'Public,NonPublic,Static'
$sysProxy = [System.Net.Http.HttpClient].Assembly.
    GetType('System.Net.Http.SystemProxyInfo').
    GetMethod('ConstructSystemProxy', $flags).
    Invoke($null, $null)
[System.Net.Http.HttpClient]::DefaultProxy = $sysProxy