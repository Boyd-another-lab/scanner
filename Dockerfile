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
    mariadb-client postgresql-client redis-tools
    
#  RUN apt-get install man-db \ 
#      apt-get install exploitdb \
#      apt-get install kali-tools-top10 

# Metasploit
# RUN curl -s https://raw.githubusercontent.com/rapid7/metasploit-omnibus/master/config/templates/metasploit-framework-wrappers/msfupdate.erb > msfinstall && \
#   chmod 755 msfinstall && \
#   ./msfinstall && \
#   rm msfinstall

# Custom scripts
COPY scripts/myip /usr/local/bin/myip

COPY entrypoint.sh /entrypoint.sh
ENTRYPOINT ["/bin/sh", "/entrypoint.sh"]