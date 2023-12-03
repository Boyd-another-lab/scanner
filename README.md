# scannerping 


Just like "make build" you know.
Then run at a prompt if you like:
docker run --rm -it kali-docker "bin/sh"


Also:
`` ./kali  <command> ``

(this builds and then runs the thing and then exits)


Run it at terminal:
`` ./kali /bin/sh ``
``./kali "nmap -sV --script vulners localhost" ``


manual: docker run --rm -it --network "host" kali-docker "bin/sh" 
#may need to use bridge networking depending on OS and docker env (remove --network "host")


/usr/share/nmap/scripts/vulscan/utilities/updater/./updateFiles.sh



``` nmap -sV -v --script=vulscan/vulscan.nse XXX.XXX.XXX.XXX > output.txt ```

