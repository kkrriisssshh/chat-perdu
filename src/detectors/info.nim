import puppy

let infoFile = "src/info/info.txt"
let ip: string = fetch("https://ipapi.co/json/")

writeFile(infoFile, ip)