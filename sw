#!/bin/bash


SYM=$1



#Setup path 
Doc=/home/ethos/local.conf



#Telegram Setup

TOKEN="Place_your-Token-Here"
CHAT_ID="Place-chat-id"


#comment out that you desired. 
#DEFAULTALGO="maxgputemp 85\nglobalfan 62\nglobalcore 1987\nglobalpowertune 198\nglobalmem 5300\nautoreboot 3\nstratumproxy enabled\ncustompanel nuiesk6d489c"
DEFAULTALGO="maxgputemp 85\nglobalfan 52\nglobalcore 1987\nglobalpowertune 180\nglobalmem 5300\nautoreboot 3\nstratumproxy enabled"



function push {

       curl -s -X POST https://api.telegram.org/$TOKEN/sendMessage -d chat_id=$CHAT_ID -d text="$1" >> /dev/null

}


ALGO=$(echo $DEFAULTALGO)



#ONLY Set pooldb.txt with pattern##
POOL=$(cat pooldb.txt | grep $SYM | cut -f 2)


push "Changed to $SYM"

echo -e "$ALGO" 

echo -e "#$SYM $POOL" > $DOC
echo -e "$ALGO" >> $DOC


push "Now Mining $SYM"

