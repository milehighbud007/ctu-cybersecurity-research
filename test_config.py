#!/usr/bin/env python3
import os
import yaml
from pathlib import Path

print("Testing config file loading...")
print(f"Current directory: {os.getcwd()}")

config_path = Path("configs/ctu_research_config.yaml")
print(f"Config path: {config_path}")
print(f"Config exists: {config_path.exists()}")

if config_path.exists():
    with open(config_path, "r") as f:
        config = yaml.safe_load(f)
    
    print("\nConfig loaded successfully!")
    print(f"Phone numbers: {config.get('research_targets', {}).get('phone_numbers', [])}")
    print(f"MAC addresses: {config.get('research_targets', {}).get('mac_addresses', [])}")
else:
    print("❌ Config file not found!")
