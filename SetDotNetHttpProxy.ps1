param (
    $ProxyUrl = 'http://127.0.0.1:8000'
)

[System.Net.Http.HttpClient]::DefaultProxy = [System.Net.WebProxy]::new($ProxyUrl)