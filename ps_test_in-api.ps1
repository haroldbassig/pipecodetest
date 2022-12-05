# Filling my var with some data
$appName="AO-CCHANGE-DAST"
$appUrl="https://uat.ebiz.qbe.com"
$full_name="My User"
$password="P@$$w0rd"

# Building a hash with my data
$hash = @{
    scanName = $($appName);
    startUrls = $($appUrl);
    crawlAuditMode = "CrawlandAudit"
    startOption ="Url"

}

# Converting my hash to json format
$JSON = $hash | ConvertTo-Json
# Displaying my JSON var
$JSON

# just to make it somewhat easier on the eyes
$token = "3bb81a498393f4af3d278164b5755fc23b74b785"
$url = "http://try.gitea.io/api/v1/admin/users?access_token=$token"

Invoke-WebRequest -uri $url -Method POST -Body $JSON -ContentType 'application/json'