# CTU Cybersecurity Research Tool

## Colorado Technical University - Advanced Mobile Security Research

### Quick Start - 3 Simple Steps

#### Step 1: Download
```bash
git clone https://github.com/milehighbud007/ctu-cybersecurity-research.git
cd ctu-cybersecurity-research
￼
Step 2: Setup
bash
￼
Copy code
chmod +x setup.sh
./setup.sh
￼
Step 3: Run
bash
￼
Copy code
./run_research.sh
￼
That's it! The tool will analyze your configured targets.

Features
Phone number security analysis
MAC address vulnerability assessment
Carrier information lookup
Network vulnerability identification
Academic research documentation
Configuration
Edit configs/ctu_research_config.yaml to change targets:

yaml
￼
Copy code
research_targets:
  phone_numbers:
    - "+17194216200"    # Your phone number here
    - "+15551234567"    # Add more numbers
  mac_addresses:
    - "4-fafecd5e88"    # Your MAC address here
    - "AA:BB:CC:DD:EE:FF"  # Add more MACs
￼
Academic Information
Institution: Colorado Technical University
Course: CS457 - Advanced Mobile Security & Penetration Testing
Student Researcher: Jack Cole
Academic Email: jack.cole16@student.ctuonline.edu
IRB Approval: CTU-IRB-2024-457-MOBILE
Academic Advisor: Dr. Michael Chen
File Structure
python
￼
Copy code
ctu-cybersecurity-research/
├── README.md                    # This file
├── LICENSE                      # Academic use license
├── setup.sh                     # Installation script
├── run_research.sh              # Main execution script
├── verify_setup.sh              # Verification script
├── test_all.sh                  # Complete test script
├── scripts/
│   └── ctu_advanced_exploitation.py  # Main research tool
├── configs/
│   ├── ctu_research_config.example.yaml  # Example config
│   └── ctu_research_config.yaml # User configuration
├── data/                        # Research data
├── logs/                        # Research logs
├── reports/                     # Generated reports
├── academic_docs/               # Academic documentation
└── backups/                     # Research backups
￼
Troubleshooting
"Permission denied" error:
bash
￼
Copy code
chmod +x setup.sh run_research.sh
￼
"command not found" for python3:
Install Python 3:

Ubuntu/Debian: sudo apt install python3 python3-venv
macOS: brew install python3
Windows: Download from python.org
"No module named" error:
Run setup first: ./setup.sh

Testing
Run the complete test:

bash
￼
Copy code
./test_all.sh
￼
Academic Ethics
This tool is for educational research only. Users must follow ethical guidelines and obtain proper authorization for any security testing.

License
Academic Use License - See LICENSE file for details.

Contact
For academic inquiries: jack.cole16@student.ctuonline.edu
For repository issues: GitHub Issues page
