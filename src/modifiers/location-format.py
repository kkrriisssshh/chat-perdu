with open("src/output/location.txt", "r") as file:
    content = file.read()

lines = content.replace('"', '').replace("{", '').replace("}", '').split("\n")
lines = [line.replace(" ", '') for line in lines if line.strip()]

with open("src/output/location.txt", "w") as file:
    file.write("\n".join(lines))