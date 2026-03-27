Task 5: Firewall Configuration

---------------- Objective --------------------------

To configure a secure firewall that restricts unauthorized access while allowing necessary services like SSH, HTTP, and application traffic on port 8000.

---

##  Installation of UFW  

Update system packages & Install UFW :

```bash
sudo apt update && sudo apt install ufw -y 
```
Check UFW status:

```bash
sudo ufw status
```
---

##  Firewall Configuration

### 1. Allow SSH Access (Port 22) frm our machine ip


```bash
sudo ufw allow from 223.182.56.68 to any port 22
```

---

### 2. Allow HTTP Traffic (Port 80)

```bash
sudo ufw allow 80
```

---

### 3. Allow Application Port (Port 8000)

```bash
sudo ufw allow 8000
```

---

## 4. Enable Firewall

```bash
sudo ufw enable
```
It asks a Confirmation as Yes/No  
proced with Yes
---

## 5. Verify Firewall Rules

```bash
sudo ufw status verbose
```

### Expected Output Example:  These are my outputs   

ubuntu@ip-19-20-41-225:~/Project-Submission$ sudo ufw status  
Status: active

To                         Action      From
--                         ------      ----
22                         ALLOW       223.182.56.68  // we can access the Application by only my machine
                                                        because the port 22 is only allow to my IP  
80                         ALLOW       Anywhere  
8000                       ALLOW       Anywhere  
80 (v6)                    ALLOW       Anywhere (v6)  
8000 (v6)                  ALLOW       Anywhere (v6)  

---

## Security Measures Implemented

* SSH access restricted to a specific IP address.
* Only required ports (80 and 8000) are open.
* All other incoming traffic is blocked by default.

---

##  Testing & Verification

* Verified SSH access works only from allowed IP.
* Tested web application access via:

  ```
  http://<server-ip>:8000  
  ```
* Confirmed firewall is actively filtering traffic.  
  
---

##  Outcome  

A secure firewall configuration was successfully implemented using UFW, ensuring restricted access while allowing required services.  
  
---

## Files Included

--> Firewall configuration commands (this README)



