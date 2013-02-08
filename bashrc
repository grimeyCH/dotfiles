# User specific aliases and functions
alias la='ls -la'


PS1='\n\t \u @ \H in \w \n $: '

# coloring directories
LS_COLORS='di=0;35' ; export LS_COLORS

#Available Colors:

#Blue = 34
#Green = 32
#Light Green = 1;32
#Cyan = 36
#Red = 31
#Purple = 35
#Brown = 33
#Yellow = 1;33
#white = 1;37
#Light Grey = 0;37
#Black = 30
#Dark Grey= 1;30

#Opens a "telnet"-like connection to an SMTP server, using the OpenSSL SSL/TLS client program.
#This command will connect, then issue a STARTTLS-command to the SMTP-server, 
#after which the communication will be encrypted.

function openssl_smtp() {
    addr=$1
 
    if [[ ! "$addr" =~ [:] ]]
    then
        addr="${addr}:25"
    fi
 
    openssl s_client -starttls smtp -crlf -connect $addr
}
