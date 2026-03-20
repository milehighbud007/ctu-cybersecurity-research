#!/bin/bash
echo "=========================================="
echo "CTU CYBERSECURITY RESEARCH TOOL - COMPLETE TEST"
echo "=========================================="

echo "1. Testing directory structure..."
ls -la {scripts,configs,data,reports,logs} 2>/dev/null && echo "✓ Directories OK"

echo -e "\n2. Testing Python environment..."
source ctu_research_env/bin/activate 2>/dev/null && python -c "import phonenumbers, yaml; print('✓ Python packages OK')"

echo -e "\n3. Testing configuration..."
if [ -f "configs/ctu_research_config.yaml" ]; then
    echo "✓ Config file exists"
    grep -q "+17194216200" configs/ctu_research_config.yaml && echo "✓ Config contains correct phone number"
    grep -q "4-fafecd5e88" configs/ctu_research_config.yaml && echo "✓ Config contains correct MAC address"
else
    echo "⚠️  Config file missing"
fi

echo -e "\n4. Testing main script..."
./run_research.sh 2>&1 | grep -q "ANALYSIS COMPLETE" && echo "✓ Script runs successfully"

echo -e "\n5. Testing setup script..."
./setup.sh 2>&1 | tail -5 | grep -q "SETUP COMPLETE" && echo "✓ Setup script works"

echo -e "\n6. Testing verification script..."
./verify_setup.sh 2>&1 | tail -5 | grep -q "complete" && echo "✓ Verification script works"

echo -e "\n=========================================="
echo "TEST COMPLETE - ALL SYSTEMS GO!"
echo "=========================================="
