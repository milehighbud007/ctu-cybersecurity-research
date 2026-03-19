#!/bin/bash
echo "Verifying CTU Research Setup..."
echo "================================"

# Check directories
echo "[1/5] Checking directories..."
ls -la /ctu_cyber_research/{data,scripts,configs,logs} 2>/dev/null && echo "✓ Directories exist"

# Check Python environment
echo "[2/5] Checking Python environment..."
cd /ctu_cyber_research && source ctu_research_env/bin/activate 2>/dev/null && python -c "import phonenumbers, requests, yaml; print(\"✓ Python packages loaded\")"

# Check configuration
echo "[3/5] Checking configuration..."
[ -f /ctu_cyber_research/configs/ctu_research_config.yaml ] && echo "✓ Configuration file exists"

# Check database
echo "[4/5] Checking database..."
[ -f /ctu_cyber_research/data/ctu_research.db ] && echo "✓ Database exists"

# Check main script
echo "[5/5] Checking main script..."
[ -f /ctu_cyber_research/scripts/ctu_advanced_exploitation.py ] && echo "✓ Main script exists"

echo "================================"
echo "Setup verification complete!"
echo "To run research: cd /ctu_cyber_research && ./run_research.sh"
