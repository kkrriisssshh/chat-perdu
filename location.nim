import json
import tables

let json: JsonNode = fetch("https://ipapi.co/json").parseJson()

echo ip["ip"].getString()
echo network["network"].getString()
echo version["version"].getString()
echo city["city"].getString()
echo region["region"].getString()
echo region_code["region_code"].getString()
echo country_name["country_name"].getString()
echo country_code["country_code"].getString()
echo country_code_iso3["country_code_iso3"].getString()
echo country_capital["country_capital"].getString()
echo country_tld["country_tld"].getString()
echo continent_code["continent_code"].getString()
echo in_eu["in_eu"].getString()
echo postal["postal"].getString()
echo latitude["latitude"].getString()
echo longitude["longitude"].getString()
echo timezone["timezone"].getString()
echo utc_offset["utc_offset"].getString()
echo country_calling_code["country_calling_code"].getString()
echo currency["currency"].getString()
echo currency_name["currency_name"].getString()
echo languages["languages"].getString()
echo country_area["country_area"].getString()
echo country_population["country_population"].getString()
echo asn["asn"].getString()
echo org["org"].getString()



let jsonTable: Table[string, string] = json.to(Table[string, string])