foreach($line in Get-Content ./variables.txt) {
    # split into key/value pair on first '=' character
    $entry = $line -split '=', 2
    $key = $entry[0]
    $value = $entry[1]
    Write-Host "Setting environment variable: $key=$value"
    echo "$key=$value" | Out-File -FilePath $Env:GITHUB_ENV -Encoding utf8 -Append
}