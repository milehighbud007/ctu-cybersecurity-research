#!/usr/bin/env python3
import sqlite3
import yaml
import requests
import phonenumbers
from pathlib import Path

print("=" * 60)
print("CTU CYBERSECURITY RESEARCH - SIMPLE ANALYSIS")
print("=" * 60)

# Load config
config_path = Path("/ctu_cyber_research/configs/ctu_research_config.yaml")
with open(config_path, "r") as f:
    config = yaml.safe_load(f)

# Connect to database
db = sqlite3.connect("/ctu_cyber_research/data/ctu_research.db")

# Analyze phone numbers
print("\n[PHONE ANALYSIS]")
for phone in config["research_targets"]["phone_numbers"]:
    try:
        parsed = phonenumbers.parse(phone, "US")
        valid = phonenumbers.is_valid_number(parsed)
        country = phonenumbers.region_code_for_number(parsed)
        print(f"  {phone}: Valid={valid}, Country={country}")
    except:
        print(f"  {phone}: Analysis failed")

# Analyze MAC addresses
print("\n[MAC ANALYSIS]")
for mac in config["research_targets"]["mac_addresses"]:
    mac_clean = mac.upper().replace(":", "").replace("-", "").replace(".", "")
    oui = mac_clean[:6]
    oui_db = {
        "92D591": "Motorola",
        "CAC3D3": "Google",
        "2EBDC5": "Apple"
    }
    manufacturer = oui_db.get(oui, "Unknown")
    print(f"  {mac}: Manufacturer={manufacturer}")

print("\n" + "=" * 60)
print("ANALYSIS COMPLETE")
print("=" * 60)
