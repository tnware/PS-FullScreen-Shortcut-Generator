### Use this tool to import a CSV of URLs to full-screen chrome shortcuts
### Tyler Woods (2016)
### beta 0..1

$destination = 'F:\destination'
$chromeroot = 'C:\Program Files (x86)\Google\Chrome'
$workingdir = 'C:\script'
$input = Import-Csv .\input.csv

function Create-Shortcut
{
$Shell = New-Object -ComObject ("WScript.Shell")
$ShortCut = $Shell.CreateShortcut("$destination\$URLTitle.lnk")
$ShortCut.TargetPath="$chromeroot\Application\chrome.exe"
$ShortCut.Arguments="--kiosk $URL"
$ShortCut.WorkingDirectory = "$chromeroot\Application";
$ShortCut.WindowStyle = 1;
$ShortCut.IconLocation = "$chromeroot\Application\chrome.exe, 0";
$ShortCut.Description = "";
$ShortCut.Save()
}

ForEach ($item in $input){
    $URLTitle = $($item.name)
    $URL = $($item.url)
    Create-Shortcut
    }