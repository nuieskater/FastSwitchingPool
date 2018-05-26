# FastSwitchingPool For ethOS
Shell script to change local.conf with preset

## Getting Started 
Download sw file and put it to /opt/ethos/bin/ or use this command.

```
curl -o /opt/ethos/bin/sw https://raw.githubusercontent.com/nuieskater/FastSwitchingPool/master/sw
```
# Config & Overclock

Place your Telegram's token to sw file & Custom your own overclock preset.
```
nano /opt/ethos/bin/sw

```
Give a permission.
```
sudo chmod +x /opt/ethos/bin/sw
```


# Create your new database.
to store some presets.(Only this pattern)
Index your symbols with first columns. I'm using columns 2 so split by TAB

```
#  BTCZ------------------------------------------------
#BTCZ 	#BTCZ
#BTCZ   globalminer dstm-zcash
#BTCZ   proxywallet t1KTM9GY3JRbsRFbT6ej6a97G2M8iFvpZab
#BTCZ   proxypool1  asia.miningspeed.com:3072
#BTCZ   proxypool2 us.miningspeed.com:3072

#  ONME------------------------------------------------
#ONME   #ONME
#ONME   globalminer ccminer
#ONME   ccminer=flags -a lyra2z -i 16.6
#ONME   proxypool1 angrypool.com:20068
#ONME   proxywallet oePC6Cje7uFTmAwefavhg3YcjF6XQ2nw5b
```
Once data has been set. save .txt then exit
```
sudo chmod +x yournewfiles.txt
```

## Usage
Use this command "sw (Your symbol)" for example.

```
sw BTCZ
```

