 # Task-1: Server Setup and SSH Configuration

## Steps Performed  

1. Created SSH key pair  
2. Created AWS EC2 Ubuntu instance  
3. Connected to server using SSH  
4. Verified passwordless authentication  

## STEP-BY-STEP INFO:  
1. KEY-PAIR CREATION  
   Before creating the EC2-Machine here we need to create an KEY-PAIR   
   regarding to my key-pair. I named it as a Mumbai-keypair  
 
2. EC2-Machine Configuration:     
  Machine Name        : CWL_Intern_Machine  
  Ubuntu Version      : Ubuntu Server 24.04  
  Instance Type       : t3.micro (Free tier eligible)  
  Key Pair            : Mumbai-keypair  
  Networking Settings : Default VPC  
  Subnet              : Public Subnet  
  Auto Assign Public IP : Enabled  
  Security Group      : Allow SSH (22), HTTP (80), HTTPS (443)  
  Storage             : 15 GB gp3 (default)  
    
  User Data (Optional Bootstrap)  
  Bash:  
    #!/bin/bash  
    sudo apt update && sudo apt install -y unzip jq net-tools   

 -------Finally Launch the instance.-------------   

3. Commands Used in Git bash (local-Machine)  

Navigate to the path from where the pem file is downloaded   

1. ls -l Mumbai-keypair.pem  
2. chmod 400 Mumbai-keypair.pem  
3. ssh -i Mumbai-keypair.pem ubuntu@your-ec2-public-ip // ssh -i Mumbai-keypair.pem ubuntu@19.20.40.96  
4. whoami    
5. cat /etc/os-release  
 
## Output  

Successfully connected to server using SSH without password and verified passwordless authentication.  
