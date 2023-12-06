FROM kalilinux/kali-rolling:latest

ENV DEBIAN_FRONTEND=noninteractive
RUN apt-get update && apt-get upgrade -yq && \
    apt-get install -y \
    nano \
    gnupg2 \
    iputils-ping traceroute dnsutils telnet whois curl net-tools iproute2 \
    nmap \
    dnsrecon \
    theharvester \
    siege \
    gobuster \
    speedtest-cli \
    man-db \
    exploitdb \
    git \
    emacs \
    mariadb-client postgresql-client redis-tools
    
RUN  apt-get install -y kali-tools-top10 

# Metasploit
# RUN curl -s https://raw.githubusercontent.com/rapid7/metasploit-omnibus/master/config/templates/metasploit-framework-wrappers/msfupdate.erb > msfinstall && \
#   chmod 755 msfinstall && \
#   ./msfinstall && \
#   rm msfinstall

# Custom scripts
COPY scripts/myip /usr/local/bin/myip

#RUN echo "/bin/bash" >> /startkali.sh
RUN cd /usr/share/nmap/scripts/ && git clone https://github.com/vulnersCom/nmap-vulners.git
RUN cd /usr/share/nmap/scripts/ && git clone https://github.com/scipag/vulscan.git
RUN chmod +x /usr/share/nmap/scripts/vulscan/utilities/updater/updateFiles.sh
RUN /usr/share/nmap/scripts/vulscan/utilities/updater/./updateFiles.sh
RUN nmap --script-updatedb

COPY entrypoint.sh /entrypoint.sh
ENTRYPOINT ["/bin/sh", "/entrypoint.sh"]
