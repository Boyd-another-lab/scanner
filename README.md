# scannerping 


Just like "make build" you know.

`` ./kali  <command> ``

(this builds and then runs the thing and then exits)


Run it at terminal:
`` ./kali /bin/sh ``

``./kali "nmap -sV --script vulners localhost" ``



manual: docker run --rm -it --network "host" kali-docker "bin/sh" 
#may need to use bridge networking depending on OS and docker env (remove --network "host")

