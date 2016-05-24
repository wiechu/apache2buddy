# apache2buddy
apache2buddy.pl is a reporting tool and onetime run dashboard for assisting with tuning and troubleshooting apache webservers.

        # curl -sL apache2buddy.pl | perl

It is a fork of the original project 'apachebuddy.pl'.

        # curl -sL apachebuddy.pl | perl

Its' continued development has included support for Debian and Ubuntu, wherease the original script only used to suport RedHat / CentOS Systems 

New features have been added and if you compared the two outputs above you will notice a vastly more intuitive and informational dash:


OLD:

        # curl -sL apachebuddy.pl | perl
        ########################################################################
        # Apache Buddy v 0.3 ###################################################
        ########################################################################
        Gathering information...
        We are checking the service running on port 80
        The process listening on port 80 is /usr/sbin/httpd
        The process running on port 80 is Apache/2.2.15 (Unix)
        Apache has been running 2d 06h 56m 40s
        The full path to the Apache config file is: /etc/httpd/conf/httpd.conf
        Apache is using prefork model

        Examining your Apache configuration...
        Apache runs as apache
        Your max clients setting is 50

        Analyzing memory use...
        Your server has 490 MB of memory
        The largest apache process is using 8.49 MB of memory
        The smallest apache process is using 8.49 MB of memory
        The average apache process is using 8.49 MB of memory
        Going by the average Apache process, Apache can potentially use 424.50 MB RAM (86.64 % of available RAM)
        Going by the largest Apache process, Apache can potentially use 424.50 MB RAM (86.64 % of available RAM)

        Generating reports...
        ### GENERAL REPORT ###

        Settings considered for this report:

                Your server's physical RAM:             490MB
                Apache's MaxClients directive:          50
                Apache MPM Model:                       prefork
                Largest Apache process (by memory):     8.49MB
        [ OK ]  Your MaxClients setting is within an acceptable range.
                Max potential memory usage:             424.5 MB

                Percentage of RAM allocated to Apache   86.64 %

        -----------------------------------------------------------------------
        -----------------------------------------------------------------------



NEW:

        # curl -sL apache2buddy.pl | perl
        ########################################################################################
        ##       ___                     __        ___      ____            __    __          ##
        ##      /   |  ____  ____ ______/ /_  ___ |__ \    / __ )__  ______/ /___/ /_  __     ##
        ##     / /| | / __ \/ __ `/ ___/ __ \/ _ \__/ /   / __  / / / / __  / __  / / / /     ##
        ##    / ___ |/ /_/ / /_/ / /__/ / / /  __/ __/   / /_/ / /_/ / /_/ / /_/ / /_/ /      ##
        ##   /_/  |_/ .___/\__,_/\___/_/ /_/\___/____/  /_____/\__,_/\__,_/\__,_/\__, /       ##
        ##         /_/ apache2buddy.pl                                          /____/        ##
        ##                                                                                    ##
        ########################################################################################

        About...
        [ INFO     ] apache2buddy.pl is a fork of apachebuddy.pl.
        [ INFO     ] Project status: STABLE. Please report bugs, if you find any, so I can fix them!
        [ INFO     ] Latest update: Tuesday, May 24th, 2016 @ 14:36. Check http://apache2buddy.pl/changelog for details.
        [ INFO     ] Send bug reports / feature requests to richard.forth AT gmail.com.
        [ INFO     ] Support for the following systems has been added:.
        [ INFO     ] Ubuntu 12.04 / 14.04, Debian 6 / 7 / 8, CentOS / Scientific Linux / RHEL versions 5.x, 6.x, 7.x.
        [ INFO     ] MD5SUMs now availiable at https://raw.githubusercontent.com/richardforth/apache2buddy/master/md5sums.txt
        [ INFO     ] SHA256SUMs now availiable at https://raw.githubusercontent.com/richardforth/apache2buddy/master/sha256sums.txt

        Performing Auto-Discovery, and Pre-Flight Checks...
        [ OK       ] This script is being run as root.
        [ OK       ] The utility 'pmap' exists and is available for use: /usr/bin/pmap
        [ OK       ] 'php' exists and is available for use: /usr/bin/php

        [ OK       ] The port (port 80) is a valid port.
        [ INFO     ] We are attempting to discover the operating system type and version number ...
        [ INFO     ] OS Name: CentOS
        [ INFO     ] OS Release: 6.6
        [ OK       ] Apache2buddy supports this OS Release/Version.
        [ INFO     ] Hostname: perl.richardforth.co.uk
        [ INFO     ] Primary IP: 46.101.60.103
        [ INFO     ] We are checking the service running on port 80...
        [ INFO     ] The process listening on port 80 is /usr/sbin/httpd
        [ INFO     ] The process running on port 80 is Apache/2.2.15 (Unix).
        [ INFO     ] Apache has been running 2d 06h 58m 12s.
        [ INFO     ] The full path to the Apache config file is: /etc/httpd/conf/httpd.conf
        [ INFO     ] Apache is using prefork model.
        [ INFO     ] pidfile setting is run/httpd.pid.
        [ INFO     ] Actual pidfile is /var/run/httpd/httpd.pid.
        [ INFO     ] Parent PID: 30534.
        [ OK       ] Memory usage of parent PID is less than 50MB: 8560 Kilobytes.
        [ INFO     ] Your server has 490 MB of PHYSICAL memory.
        [ INFO     ] Your MaxClients setting is 50.
        [ INFO     ] Your ServerLimit setting is 120.
        [ INFO     ] Your MaxRequestsPerChild setting is 4000.

        Detecting PHP Memory Limits...
        [ INFO     ] Your PHP Memory Limit (Per-Process) is 128 MB.

        Detecting additional services for consideration...
        [ INFO     ] MySQL Detected => Using 17.55 MB of memory.
        [ INFO     ] Varnish Detected => Using 9.33 MB of memory.
        [ INFO     ] Memcache Detected => Using 0.89 MB of memory.

        Detecting If Maxclients or MaxRequestWorkers has been hit recently....

        PRO TIP: If this process appears to hang, press CTRL + c to exit the program, and then
        go check for a large error log file in /var/log/httpd or /var/log/apache2.

        [ OK       ] MaxClients has not been hit recently.
        
        Analyzing apache memory use...
        [ INFO     ] httpd is currently using 80.43 MB of memory.
        [ INFO     ] The smallest apache process is using 8.49 MB of memory
        [ INFO     ] The average apache process is using 8.49 MB of memory
        [ INFO     ] The largest apache process is using 8.49 MB of memory

        Results...
        [ OK       ] Going by the average Apache process, Apache can potentially use 424.50 MB RAM:
                        Without considering services: 86.64 % of total installed RAM
                Considering extra services: 91.84 % of remaining RAM
        [ OK       ] Going by the largest Apache process, Apache can potentially use 424.50 MB RAM:
                      Without considering services: 86.64 % of total installed RAM
                      Considering extra services: 91.84 % of remaining RAM

        Generating reports...
        ### GENERAL FINDINGS & RECOMMENDATIONS ###
        --------------------------------------------------------------------------------
        Apache2buddy.pl report for server: servername (IP ADDRESS):

        Settings considered for this report:

                Your server's physical RAM:                                   490 MB
                Remaining Memory after other services considered:             462 MB
                Apache's MaxClients directive:                                50       <--------- Current Setting
                Apache MPM Model:                                             prefork
                Largest Apache process (by memory):                           8 MB
        [ OK ]  Your MaxClients setting is within an acceptable range.
                Your recommended MaxClients setting is between 48 and 54.               <------- Acceptable Range (10% of MAX)
                Max potential memory usage:                                   424 MB
                Percentage of TOTAL RAM allocated to Apache:                  86.64  %
                Percentage of REMAINING RAM allocated to Apache:              91.84  %
        --------------------------------------------------------------------------------
        A log file entry has been made in: /var/log/apache2buddy.log for future reference.

        Last 5 entries:

        2016/04/21 12:17:26 Model: "Prefork" Memory: "490 MB" Maxclients: "50" Recommended: "48" Smallest: "7.98 MB" Avg: "7.98 MB" Largest: "7.98 MB" Highest Pct Remaining RAM: "102.92%" (81.43% TOTAL RAM)
        2016/04/21 12:17:41 Model: "Prefork" Memory: "490 MB" Maxclients: "50" Recommended: "48" Smallest: "7.98 MB" Avg: "7.98 MB" Largest: "7.98 MB" Highest Pct Remaining RAM: "102.92%" (81.43% TOTAL RAM)
        2016/04/21 12:20:04 Model: "Prefork" Memory: "490 MB" Maxclients: "50" Recommended: "48" Smallest: "7.98 MB" Avg: "7.98 MB" Largest: "7.98 MB" Highest Pct Remaining RAM: "102.92%" (81.43% TOTAL RAM)
        2016/05/24 09:27:57 Model: "Prefork" Memory: "490 MB" Maxclients: "50" Recommended: "54" Smallest: "8.49 MB" Avg: "8.49 MB" Largest: "8.49 MB" Highest Pct Remaining RAM: "91.83%" (86.64% TOTAL RAM)
        2016/05/24 10:14:15 Model: "Prefork" Memory: "490 MB" Maxclients: "50" Recommended: "54" Smallest: "8.49 MB" Avg: "8.49 MB" Largest: "8.49 MB" Highest Pct Remaining RAM: "91.84%" (86.64% TOTAL RAM)

        #

So as you may see, there are some similarities between the new and the old, but the NEW has undergone some incerdible changes and is an entirely new beast, one of the most killer featues is that it nows takes into consideration a nuumber of services BEFORE calculating a maxcients value, this includes:

       - MySQL
       - Java
       - Varnish
       - Redis
       - Memcache
       - PHP-FPM
       - Gluster
