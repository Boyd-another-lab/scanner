# scannerping 


Just like "make build" you know.

`` ./kali  <command> ``

(this builds and then runs the thing and then exits)


Run it at terminal:
`` ./kali /bin/sh ``

``./kali "nmap -sV --script vulners localhost" ``


nmap -sV --script vulners xxx.xxx.xxx.xxx seems to be giving different results than local host running same command, looking into it, probably networking issue with docker bridged/ip