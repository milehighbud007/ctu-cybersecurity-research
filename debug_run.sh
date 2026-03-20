#!/bin/bash
echo "Debugging run_research.sh..."
echo "Current directory before cd: $(pwd)"
echo "Changing to: $(dirname "$0")"
cd "$(dirname "$0")"
echo "Current directory after cd: $(pwd)"
echo "Python environment exists: $(test -d "ctu_research_env" && echo "YES" || echo "NO")"
echo "Script exists: $(test -f "scripts/ctu_advanced_exploitation.py" && echo "YES" || echo "NO")"
