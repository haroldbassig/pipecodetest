#var wiApiUrl = 'https://httpbin.org/post' //tl.getInput('wiApiUrl', false);
#var appUrl = 'https://uat.ebiz.qbe.com' //tl.getInput('appUrl', false);
#var settingsName = 'Default' //tl.getInput('settingsName', false);
#var appName = 'AO-CCHANGE-DAST'//tl.getInput('appName', false);
#var appVersion = '8.05.0.02' //tl.getInput('appVersion', false);
#var sscUrl = tl.getInput('sscUrl', false);
#var sscCiToken = tl.getInput('sscCiToken', false);

$response = Invoke-WebRequest -Uri 'https://official-joke-api.appspot.com/random_joke' -UseBasicParsing

$users = $response | ConvertFrom-Json

$users | Format-Table
