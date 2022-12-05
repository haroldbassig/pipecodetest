$Age = Read-Host "Please enter your age";
function uploadReportApi
{
    Param($reportPath, $appName)
    try { 
        $projectdetails = "$appName"; #getProjectDetails(appName);
        Write-Output "project details: $projectdetails`n"
        $attributedata = "$projectdetails currentversionid"; #getProjectAttributes(projectdetails.currentversionid);
        Write-Output "attribute details: $attributedata`n";
        $versionid = "$projectdetails $attributedata"; #createProjectVersion(projectdetails, attributedata);
        Write-Output "new version created: $versionid`n";

        #let formData = new FormData();
        
        #New-Item -Path "$reportPath/scan.fpr" -ItemType File #formData.append("file", fs.createReadStream(reportPath), "scan.fpr");

        
        #$artifacts = Invoke-WebRequest -Uri 'https://bing.com/' -Method Get -Form $Form
        
        #$artifacts = Invoke-WebRequest -Uri 'https://fortify-ssc.qbe.com:8443/ssc/api/v1/projectVersions/'.$versionid.'/artifacts' -Method Post -Form $Form
        #$headers = @{
        #    "Authorization": 'FortifyToken ' + sscCiToken,
        #    'content-type': 'multipart/form-data; boundary=' + formData.getBoundary()
        #}
        #    Invoke-WebRequest -Uri $url -Body ($body|ConvertTo-Json) -Method 'Post' -Headers $headers -ContentType "application/json"
        #Write-Output $artifacts.data; #console.log(artifacts.data);
    }
    
    catch {
        Write-Host "Error uploading scan report to SSC: `n$_.ScriptStackTrace`n"
        #Write-Host $_.ScriptStackTrace
    }
}

#call upload function
#uploadReportApi -reportPath "hahahaha" -appName "testing"




