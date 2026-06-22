# Troubleshooting Playbook

This document provides solutions for common issues encountered while using the IT-Automation-Toolkit.

---

## 1. Execution Policy Error

### Error Message

```text
Scripts cannot be loaded because running scripts is disabled on this system.
```

### Solution

Run PowerShell as Administrator and execute:

```powershell
Set-ExecutionPolicy RemoteSigned -Scope CurrentUser
```

Type:

```text
Y
```

Press Enter and rerun the script.

---

## 2. Git Authentication Error

### Error Message

```text
remote: Permission denied
fatal: Authentication failed
```

### Solution

- Verify the correct GitHub account is signed in.
- Remove old credentials from Windows Credential Manager.
- Sign in again with the appropriate account.

Check Git configuration:

```powershell
git config --global --list
```

---

## 3. Author Identity Unknown

### Error Message

```text
Author identity unknown
```

### Solution

Configure Git username and email:

```powershell
git config --global user.name "abhatia28"

git config --global user.email "bhatiaanshit28@gmail.com"
```

---

## 4. DNS Resolution Failure

### Error Message

```text
DNS lookup failed
```

### Solution

Verify internet connectivity and DNS settings.

Run:

```powershell
Resolve-DnsName google.com
```

---

## 5. Port Connectivity Failure

### Error Message

```text
TcpTestSucceeded : False
```

### Solution

- Check firewall settings.
- Verify the target service is running.
- Confirm the correct port number.

Example:

```powershell
Test-NetConnection google.com -Port 443
```

---

## 6. Script Not Found Error

### Error Message

```text
The term '.\script-name.ps1' is not recognized.
```

### Solution

Ensure you are in the project root directory.

Check current directory:

```powershell
pwd
```

List files:

```powershell
dir
```

---

## 7. Internet Connectivity Issues

### Solution

Run:

```powershell
Test-Connection google.com -Count 4
```

Check network configuration:

```powershell
ipconfig /all
```

---

## 8. Windows Update Information Not Available

### Solution

Run PowerShell as Administrator and execute:

```powershell
Get-HotFix
```

Ensure the Windows Update service is running.

---

## 9. Antivirus Status Command Error

### Error Message

```text
Get-MpComputerStatus : The term is not recognized.
```

### Solution

- Ensure Windows Defender is enabled.
- Run PowerShell with administrative privileges.
- Verify the system is running Windows 10 or later.