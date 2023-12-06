# Kali Scanning Docker Image


Just like "make build" you know.
Then run at a terminal if you like:
docker run --rm -it kali-docker "bin/sh"
#may need to use bridge networking depending on OS and docker env (remove --network "host")


Also for those that like shortcuts:
`` ./kali  <command> ``

Run it at terminal:
`` ./kali /bin/sh ``

Scan examples:
``./kali "nmap -sV --script vulners <target>" ``



``` nmap -sV -v --script=vulscan/vulscan.nse XXX.XXX.XXX.XXX > output.txt ```
a more compact scan that does some slight vuln testing:
``` nmap -Pn --script vuln target ```


# Example of each of the scanners:
```
nmap --script nmap-vulners/ -sV <target> -p 21-80
nmap -sS -sV --script=vulscan/vulscan.nse <target>  
nmap -scritp vuln <target>
```

Example of a local scan:
```
nmap -script vuln 192.168.1.0-255   
```