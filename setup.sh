#!/bin/bash
# CTU Cybersecurity Research Tool - Simple Setup Script

echo "=========================================="
echo "CTU Cybersecurity Research Tool Setup"
echo "=========================================="

# Step 1: Check Python
echo "[1/4] Checking Python..."
if ! command -v python3 &> /dev/null; then
    echo "❌ Python 3 is not installed!"
    echo "Please install Python 3 first:"
    echo "  Ubuntu/Debian: sudo apt install python3 python3-venv"
    echo "  macOS: brew install python3"
    echo "  Windows: Download from python.org"
    exit 1
fi
echo "✓ Python 3 is installed"

# Step 2: Create virtual environment
echo "[2/4] Creating Python environment..."
python3 -m venv ctu_research_env
source ctu_research_env/bin/activate

# Step 3: Install packages
echo "[3/4] Installing required packages..."
pip install --upgrade pip
pip install phonenumbers requests pyyaml

# Step 4: Make scripts executable
echo "[4/4] Setting up scripts..."
chmod +x run_research.sh verify_setup.sh

echo ""
echo "=========================================="
echo "SETUP COMPLETE!"
echo "=========================================="
echo ""
echo "To use the tool:"
echo "1. First, activate the environment:"
echo "   source ctu_research_env/bin/activate"
echo ""
echo "2. Then run the research tool:"
echo "   ./run_research.sh"
echo ""
echo "3. Or verify setup:"
echo "   ./verify_setup.sh"
echo ""
echo "Note: If you close the terminal, you need to run"
echo "'source ctu_research_env/bin/activate' again."
echo "=========================================="
