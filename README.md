# Cybersecurity Assignment Portfolio

**Assignment 2 Portfolio for Central Queensland University (HE Term 2 2024)**  
**Unit:** COIT11241: Cyber Security Technologies

This repository contains all the materials and scripts for **Assignment 2** of the COIT11241 unit at CQUniversity. The assignment demonstrates the setup, detection, and defense against simulated ransomware attacks using tools like **Sysmon**, **Nessus**, and **PowerShell**. The project covers multiple weeks of vulnerability assessment, threat intelligence analysis, and attack simulations in a controlled environment.

## Group Members

- **Bibek Neupane Khatri**: 12244872 (Github: [bibekme](https://github.com/bibekme))
- **Diwas Phuyal**: 12250905 (Github: [Diwas747624](https://github.com/Diwas747624))
- **Sannon Shrestha**: 12233019 (Github: [Sannon17](https://github.com/Sannon17))

## Project Overview

### Week 6: Vulnerability Scanning and Information System Setup
In Week 6, we set up the information system using **VirtualBox** with both **Kali Linux** and **Windows Server 2022**. We ran vulnerability scans using tools like **Nessus** and **Nmap** to identify potential weaknesses in the system.

- **VirtualBox Setup**: Screenshots showing the virtualized system and network configurations.
- **Nessus Scan Results**: PDF, CSV, and screenshots documenting vulnerabilities identified in the **Windows VM**.
- **Nmap Scan**: Outputs from **Nmap** scans that complement the Nessus findings.

### Week 7: Threat Intelligence Report
In Week 7, a **Threat Intelligence Report** was developed to identify the **most likely threat actor**, using data from **MITRE ATT&CK** and focusing on techniques associated with the **Clop ransomware**.

- **Threat Intelligence Report**: The PowerPoint presentation provides an in-depth analysis of the threat actor and their associated tactics and techniques.

### Week 8: Prioritizing Vulnerabilities
Week 8 focused on analyzing and prioritizing the vulnerabilities identified in Week 6, based on **CVE references** and aligning them with attack techniques used by the **Clop ransomware**. The vulnerabilities were mapped to real-world attack patterns and mitigations were suggested.

- **Week 8 Presentation**: PowerPoint presentation detailing the vulnerability prioritization process.

### Week 9: Attack Simulation and Detection
In Week 9, we simulated two attacks:
1. **Attack 1**: Simulated **file encryption** using a PowerShell script.
2. **Attack 2**: Simulated **registry modification** for persistence.

Detection mechanisms were set up using **Sysmon** to monitor for **file modifications** and **registry changes**. The custom **Sysmon configuration** was deployed, and **PowerShell scripts** were used to detect and log the attack activities.

- **Code Documentation and Comments**: Each PowerShell script is well-documented with comments that explain each step of the attack and detection processes. This ensures clarity and ease of understanding for anyone reviewing or modifying the code in the future.
- **PSScriptAnalyzer Usage**: PSScriptAnalyzer was used to ensure that all scripts follow best practices for PowerShell code, including style and functionality checks. This tool helped us clean up the scripts, improve readability, and ensure they adhere to security and performance guidelines.
- **PS-Scripts Folder**: Includes PowerShell scripts for the attacks, Sysmon setup, and detection scripts.
- **Sysmon Configuration**: Custom Sysmon configuration (`sysmonconfig-export.xml`) to detect the simulated attacks.

## Key Highlights
- **Sysmon-Based Detection**: Customized Sysmon rules were created to monitor specific attack techniques, such as **file encryption** and **registry modification**.
- **PowerShell Scripts**: Developed scripts to simulate the attacks and detect malicious activity in real time.
- **Comprehensive Reports**: PowerPoint presentations for each week's tasks summarize the findings, threat intelligence, and attack detections.

## Usage Instructions
1. **Setup**: Use the `SysmonSetup.ps1` script to configure Sysmon on your system using the custom configuration.
2. **Run Simulated Attacks**:
   - Use `Attack1.ps1` to simulate a file encryption attack.
   - Use `Attack2.ps1` to simulate a registry modification attack.
3. **Detect the Attacks**:
   - Use `DetectAttack1.ps1` to detect file encryption activities.
   - Use `DetectAttack2.ps1` to detect registry modifications.
4. **Review Findings**: All results and logs are captured by Sysmon and can be viewed using PowerShell or through the Event Viewer.

## Acknowledgements
This repository uses **Generative AI** for parts of the script development to optimize detection and attack simulation processes. All sources for code and analysis are documented and cited appropriately.
