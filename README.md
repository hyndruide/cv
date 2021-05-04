#Software and plugins most use by dev

Manual installation : 

* [visual studio 2019 community](https://visualstudio.microsoft.com/fr/downloads/)
* [Visual Studio 2008](https://www.microsoft.com/fr-FR/download/details.aspx?id=13276)
* [Visual Studio Code](https://code.visualstudio.com/) or [Pycharm](https://www.jetbrains.com/fr-fr/pycharm/)
* [wsl_update_x64](https://docs.microsoft.com/fr-fr/windows/wsl/install-win10)
* [Docker desktop](https://www.docker.com/products/docker-desktop)
* [dotnetfx35](https://www.microsoft.com/fr-fr/download/details.aspx?id=25150)
* [KeePass](https://keepass.fr/)
* [Cmder](https://cmder.net/)
* [SQL Server® Compact 4.0 SP1](https://www.microsoft.com/fr-FR/download/details.aspx?id=30709)
* [Activesync](https://www.microsoft.com/fr-fr/download/details.aspx?id=15)
* [discord](https://discord.com/)
* [SQLCE 3.5](https://www.microsoft.com/fr-fr/download/details.aspx?id=5783)

plug ins for Visual studio 2019 :
* Resharper
* BlendWPFSDK_en
* NCrunch_VS2019
* NetCFSetupv
* scrcpy-vs

install auto (via chocolatey) :


need to be install manualy :

* [Visual Studio 2008](https://www.microsoft.com/fr-FR/download/details.aspx?id=13276)
* [dotnetfx35](https://www.microsoft.com/fr-fr/download/details.aspx?id=25150)
* [SQL Server® Compact 4.0 SP1](https://www.microsoft.com/fr-FR/download/details.aspx?id=30709)

- install chocolatey via cmd prompt (as administrator)
	- copy the line:


	```
	Set-ExecutionPolicy Bypass -Scope Process -Force; [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072; iex ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))
	```




- install line by line:
  
``` 
choco install visualstudio2019community
choco install wsl
choco install docker-desktop
choco install dotnetfx
choco install cmder
choco install scrcpy
choco install ncrunch-vs2019
choco install resharper-ultimate-all
choco install keepass
choco install git
choco install python
choco install expressionblend4
choco install googlechrome
choco install slack
choco install discord
```
- or once :

```
choco install visualstudio2019community wsl docker-desktop dotnetfx cmder scrcpy ncrunch-vs2019 resharper-ultimate-all keepass git python expressionblend4 googlechrome slack discord
```

#Les app
 * Gwinapp :
   * ZgRemote.sln (android)
   * gwinApp.sln :
    * ZgClientapp (clientApp)
   * WinceApps.sln :
    * ZgRemoteApp (Remote Wince) a demarer avec visual studio 2008 
    
