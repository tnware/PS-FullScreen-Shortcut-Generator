### Powershell script to create "kiosk mode" shortcuts in bulk, quickly, from a CSV.

To use, simply modify the CSV with a list of names and urls to sites that you want the shortcuts to be created for.

The `input.csv` file will be loaded by the powershell script when you execute it
- for each entry, powershell will run my function `Create-Shortcut{} `

---

UNDERSTANDING THE VARIABLES

`$destination = 'F:\destination' `

-- this should explain itself. Where do you want the shortcuts created?

`$chromeroot = 'C:\Program Files (x86)\Google\Chrome'`

-- this is the root of Google Chrome on the PCs this will be run against, as these will be Chrome Kiosk Mode shortcuts.

`$workingdir = 'C:\script'`

-- this is from my developing, i need to remove this variable from the code. disregard.

`$input = Import-Csv .\input.csv`

-- this variable is processed in the ForLoop


```
ForEach ($item in $input){
    $URLTitle = $($item.name)
    $URL = $($item.url)
    Create-Shortcut
    }

```

---
