Task 3: Container Resource Monitoring

 ---- Objective -----

To monitor Docker container resource usage by capturing **CPU usage**, **memory usage**, and **timestamps**, and store the logs automatically every minute.

##  Steps Performed

###  Create Monitoring Directory

```bash

 sudo mkdir -p /opt/container-monitor/logs

```
###  Create Monitoring Script

```bash

vi monitorscript.sh

```

Add the following script:

```bash

#!/bin/bash

CONTAINER_ID=$(/usr/bin/docker ps -q)

TIMESTAMP=$(date "+%Y-%m-%d %H:%M:%S")

STATS=$(/usr/bin/docker stats --no-stream --format "{{.Name}} | CPU: {{.CPUPerc}} | MEM: {{.MemUsage}}" $CONTAINER_ID)

echo "$TIMESTAMP | $STATS" >> /opt/container-monitor/logs/monitor.log
```

### Make Script Executable

```bash

chmod +x monitorscript.sh

```
###  Test the Script

```bash

./ monitorscript.sh

```

Check logs:

bash:
--> cat /opt/container-monitor/logs/monitor.log
output:
ubuntu@ip-19-20-41-225:~/Project-Submission/Task-3$ cat /opt/container-monitor/logs/monitor.log
2026-03-27 07:06:36 | romantic_euclid | CPU: 0.00% | MEM: 3.406MiB / 3.725GiB

###  Automate Using Cron Job

Open crontab:

```bash

crontab -e  // Installs the crontab 

```
Add the following line in crontab :

```bash

* * * * * /home/ubuntu/Project-Submission/Task-3/monitorscript.sh```
---

TO check our scrip in crontab use : crontab -l 

###  Verify Automation

After a few minutes, check:

```bash

cat /opt/container-monitor/logs/monitor.log

```

Sample Output:

ubuntu@ip-19-20-41-225:~/Project-Submission/Task-3$ cat /opt/container-monitor/logs/monitor.log
2026-03-27 07:22:41 | romantic_euclid | CPU: 0.00% | MEM: 3.406MiB / 3.725GiB
2026-03-27 07:23:01 | romantic_euclid | CPU: 0.00% | MEM: 3.406MiB / 3.725GiB
2026-03-27 07:24:01 | romantic_euclid | CPU: 0.00% | MEM: 3.406MiB / 3.725GiB
---

##  Outcome

* Successfully monitored Docker container resource usage
* Logged CPU and memory usage with timestamps
* Automated logging using cron job (runs every minute)
* Logs stored in `/opt/container-monitor/logs/monitor.log`

---

##  Files Included

* monitorscript.sh

---

