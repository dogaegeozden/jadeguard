#!/bin/bash

main(){
    # The function which runs the entire script.

    # Calling the delete_all_rules function.
    delete_all_rules

    # Calling the accept_all_connection function.
    accept_all_connections

}

delete_all_rules() {
    # A function which deletes all the existing rules

    iptables -t filter -F

    iptables -t filter -X

    iptables -t nat -F

    iptables -t nat -X


    ip6tables -t filter -F

    ip6tables -t filter -X

    ip6tables -t nat -F

    ip6tables -t nat -X

}


accept_all_connections() {
    # A function which sets iptables rules for ipv4 and ipv6 as it will accept all connections

    iptables -P INPUT ACCEPT

    iptables -P FORWARD ACCEPT

    iptables -P OUTPUT ACCEPT

    ip6tables -P INPUT ACCEPT

    ip6tables -P FORWARD ACCEPT
    
    ip6tables -P OUTPUT ACCEPT

}

# Calling the main function.
main