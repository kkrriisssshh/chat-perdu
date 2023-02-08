import sysinfo
import puppy

let ip: string = fetch("https://ipapi.co/json/")

echo ip 

let infoFile = """src\info\info.txt""" 

echo "getMachineModel: ", getMachineModel()
echo "getMachineName: ", getMachineName()
echo "getMachineManufacturer: ", getMachineManufacturer()
echo "getOsName: ", getOsName()
echo "getOsVersion: ", getOsVersion()
echo "getCpuName: ", getCpuName()
echo "getCpuGhz: ", getCpuGhz(), "GHz"
echo "getCpuManufacturer: ", getCpuManufacturer()
echo "getNumCpus: ", getNumCpus()
echo "getNumTotalCores: ", getNumTotalCores()
echo "getTotalMemory: ", getTotalMemory().float / 1024 / 1024 / 1024, "GB"
echo "getFreeMemory: ", getFreeMemory().float / 1024 / 1024 / 1024, "GB"
echo "getGpuName: ", getGPUName()
echo "getGpuDriverVersion: ", getGpuDriverVersion()
echo "getGpuMaxFPS: ", getGpuMaxFPS()

let s = process.outputStream.readAll()
infoFile.write(s)
infoFile.close()