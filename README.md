#  DevOps Internship Assignment – Project Submission

##  Objective

This project demonstrates core DevOps fundamentals including server setup, Docker deployment, monitoring, security, and firewall configuration.    
The objective is to deploy an application using Docker on AWS EC2 and implement monitoring, logging, and security best practices.   
---

## Architecture Diagram
---
User  
 ⬇  
AWS EC2 (Ubuntu Server)  
 ⬇  
Docker Container (Application)  
 ⬇  
Monitoring Script (CPU / Memory)  
 ⬇  
Log Files

## Tools Used
- AWS EC2
- Docker
- Linux
- Shell scripting
- Cron
- UFW

##  Tasks Overview  

### Task 1: Server Setup & SSH Configuration  

--> Provisioned Ubuntu server (AWS EC2)  
--> Installed and configured SSH  
--> Enabled passwordless authentication using SSH keys  

----- Secure remote login without password ----   

---  

### Task 2: Docker Installation & Deployment  

--> Installed Docker on server    
--> Created Dockerfile to host custom `index.html`  
--> Built Docker image and ran container  
--> Exposed application on port **8000**  

we can Access Via Pubip:8000  

http://13.203.41.15:8000  
 
Application successfully deployed using Docker  
  
---

### Task 3: Container Monitoring  

--> Created monitoring script to track:  
  -> CPU usage  
  -> Memory usage  
  -> Timestamp logging  
--> Stored logs in:  
  

/opt/container-monitor/logs/


--> Automated using cron job (runs every minute)  

 Continuous container monitoring enabled.    

---

### Task 4: Secure Log Access  

--> Created dedicated user: `monitoruser`  
--> Assigned ownership of monitoring directory  
--> Restricted access using permissions  

 Only authorized user can access logs  

---  

### Task 5: Firewall Configuration  

--> Installed and configured UFW firewall  
--> Implemented rules:  
  -> Allow SSH only from specific IP  
  -> Allow HTTP (port 80)  
  -> Allow application port (8000)  
--> Enabled logging and verified blocking via logs  

Secure firewall with controlled access   

---

##  Security Summary  

--> SSH restricted to trusted IP  
--> Application ports controlled via firewall  
--> User-level permission restrictions applied  
--> Monitoring logs secured  

---

##  Project Structure  


Project-Submission/  
├── Task-1/  
├── Task-2/  
├── Task-3/  
├── Task-4/  
├── Task-5/  
└── README.md  
  
---

##  Conclusion  

This project successfully demonstrates the implementation of essential DevOps practices.  
Including secure access, containerized deployment, automated monitoring, and network security.  

---  

