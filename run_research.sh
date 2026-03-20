#!/bin/bash
# CTU Research Tool - Fixed version
# Always uses the script in the current directory

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
cd "$SCRIPT_DIR"

echo "Running from: $SCRIPT_DIR"
echo "Script location: $SCRIPT_DIR/scripts/ctu_advanced_exploitation.py"

# Check if Python environment exists
if [ ! -d "ctu_research_env" ]; then
    echo "❌ Python environment not found in $SCRIPT_DIR!"
    echo "Please run: ./setup.sh"
    exit 1
fi

# Check if script exists
if [ ! -f "scripts/ctu_advanced_exploitation.py" ]; then
    echo "❌ Script not found: $SCRIPT_DIR/scripts/ctu_advanced_exploitation.py"
    exit 1
fi

# Activate environment and run
source ctu_research_env/bin/activate
python scripts/ctu_advanced_exploitation.py
