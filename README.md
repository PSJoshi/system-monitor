# system-monitor
Monitor the system for signs of any breach or compromise for both windows and linux boxes.

So, I have started collecting the parameters need to be monitored to detect a breach on linux box: 

* Hogging process monitor - Identifies process with highest CPU utilization in percent
* Netstat monitor - Monitors network load per NIC using netstat command. Use netstat -interfaces command to find out the following parameters:
  * Bytes in per NIC 
  * Bytes out per NIC 
  * packets dropped per NIC 
  * packets overrun per NIC 
  * packets error per NIC 

* Ping monitor - Monitors network connectivity between the configured device and server of interest. It allows us to know network response time.
* NFS service monitor - Monitors NFS service availability
* Cron-jobs monitor - Allows monitoring of cron job execution. It monitors /var/log/cron file and reports number of jobs executed in the last polling cycle.
* user monitor - Monitor no of users
* groups monitor - Monitor any groups changes 
* Ethernet stats monitor - Monitors various ethernet interface statistics 

* List root accounts
* Monitor umask change 
* Track changes in password file 
* Track changes in PATH
* Track changes in ENVIRONMENT
* Runlevel change 
* sudo usage 
 
Presently, the list is very minimal, but I will expand over a period of time.

The following projects seem to be useful and I will pickup some features from these projects:
* Watchsys - https://github.com/jgmdev/watchsys
* PayloadsAllTheThings - https://github.com/swisskyrepo/PayloadsAllTheThings/blob/master/Methodology%20and%20Resources/Linux%20-%20Privilege%20Escalation.md
* pspy - https://github.com/DominicBreuker/pspy 
