#!/bin/bash
echo "=========================================="
echo "CTU CYBERSECURITY RESEARCH TOOL - FINAL TEST"
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
./setup.sh 2>&1 | grep -q "SETUP COMPLETE" && echo "✓ Setup script works"

echo -e "\n6. Testing verification script..."
./verify_setup.sh 2>&1 | grep -q "Setup verification
[DevPen187@DevPen187 Desktop]$ cd
[DevPen187@DevPen187 ~]$ cd ~/ctu-cybersecurity-research
[DevPen187@DevPen187 ctu-cybersecurity-research]$ cat run_research.sh

# Check if there's a symlink or something
ls -la run_research.sh

# Check what directory it's actually changing to
cat > debug_run.sh << 'EOF'
#!/bin/bash
echo "Debugging run_research.sh..."
echo "Current directory before cd: $(pwd)"
echo "Changing to: $(dirname "$0")"
cd "$(dirname "$0")"
echo "Current directory after cd: $(pwd)"
echo "Python environment exists: $(test -d "ctu_research_env" && echo "YES" || echo "NO")"
echo "Script exists: $(test -f "scripts/ctu_advanced_exploitation.py" && echo "YES" || echo "NO")"
