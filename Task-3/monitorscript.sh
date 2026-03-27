#!/bin/bash

CONTAINER_ID=$(/usr/bin/docker ps -q)

TIMESTAMP=$(date "+%Y-%m-%d %H:%M:%S")

STATS=$(/usr/bin/docker stats --no-stream --format "{{.Name}} | CPU: {{.CPUPerc}} | MEM: {{.MemUsage}}" $CONTAINER_ID)

echo "$TIMESTAMP | $STATS" >> /opt/container-monitor/logs/monitor.log
