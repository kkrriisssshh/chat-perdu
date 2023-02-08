import sysinfo

proc writeHardwareInfo() =
    let hardwareFile = "src/output/hardware.txt"

    let lines = ["model de machine: " & getMachineModel(),
            "nom de la machine: " & getMachineName(),
            "fabricant de la machine: " & getMachineManufacturer(),
            "nom de l'os: " & getOsName(), "version de l'os: " & getOsVersion(),
            "nom de la cpu: " & getCpuName(), "vitesse de la cpu: " &
            $getCpuGhz() & "GHz", "fabricant de la cpu: " & getCpuManufacturer()]

    let f = open(hardwareFile, fmWrite)
    defer: f.close()

    for line in lines:
        f.writeLine(line)

writeHardwareInfo()
