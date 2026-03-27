 Task 4: Secure Monitoring Logs Using User Permissions

--- Objective ----

To secure container monitoring logs by creating a dedicated user and restricting access to the monitoring directory.

---

## 🛠️ Steps Performed

### 1.Create a Dedicated User
```bash
sudo adduser monitoruser
```

### 2.Create Monitoring Directory

```bash
sudo mkdir -p /opt/container-monitor/logs
```

---
### 3. Assign Ownership to Dedicated User

```bash

sudo chown -R monitoruser:monitoruser /opt/container-monitor

---

### 4.Set Permissions

```bash
sudo chmod -R 700 /opt/container-monitor
```

---

### 5. Verify Ownership and Permissions

```bash
ls -ld /opt/container-monitor
```

Expected output:

```
drwx------ monitoruser monitoruser /opt/container-monitor
```

---

### 6️⃣ Verify Access Control

#### Switch to monitoring user:

```bash
su monitoruser  
cd /opt/container-monitor  

----------------My-Outputs:-----------  
ubuntu@ip-19-20-41-225:~/Project-Submission/Task-4$ su - monitoruser  
Password:  
monitoruser@ip-19-20-41-225:~$ ls  
monitoruser@ip-19-20-41-225:~$ cd /opt/container-monitor  
monitoruser@ip-19-20-41-225:/opt/container-monitor$ ls  
logs  
monitoruser@ip-19-20-41-225:/opt/container-monitor$ cd logs  
monitoruser@ip-19-20-41-225:/opt/container-monitor/logs$ ls  
monitor.log  
monitoruser@ip-19-20-41-225:/opt/container-monitor/logs$ cat monitor.log  
2026-03-27 07:22:41 | romantic_euclid | CPU: 0.00% | MEM: 3.406MiB / 3.725GiB  
2026-03-27 07:23:01 | romantic_euclid | CPU: 0.00% | MEM: 3.406MiB / 3.725GiB  

---

#### Try accessing from another user:

```bash
su ubuntu
cd /opt/container-monitor
```
outputs: Here we Can see that other user is restricting by pur permissions   
ubuntu@ip-19-20-41-225:~$ cd /opt/container-monitor  
bash: cd: /opt/container-monitor: Permission denied  
ubuntu@ip-19-20-41-225:~$ su - monitoruser  
Password:  
monitoruser@ip-19-20-41-225:~$ cd /opt/container-monitor  
monitoruser@ip-19-20-41-225:/opt/container-monitor$ ls  
logs  
monitoruser@ip-19-20-41-225:/opt/container-monitor$  


The another user cant Access, so it is denied   

---

##  Security Implementation

--> Only `monitoruser` has full access to monitoring logs  
--> Other users are restricted from accessing `/opt/container-monitor  
--> Ensures secure handling of container monitoring data  

---

## Outcome

--> Dedicated user created successfully  
--> Monitoring directory secured  
--> Proper access control implemented  
--> Unauthorized access restricted  

---

## Files Included

--> User and permission configuration commands

---

