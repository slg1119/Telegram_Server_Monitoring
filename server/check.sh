echo "Time : receive (Kbit/Sec) / transmit (Kbit/Sec)"
        rx1=`grep eth1 /proc/net/dev | awk '{print $1}' | sed 's/.*://'`
        tx1=`grep eth1 /proc/net/dev | awk '{print $9}'`

        sleep 3

        rx2=`grep eth1 /proc/net/dev | awk '{print $1}' | sed 's/.*://'`
        tx2=`grep eth1 /proc/net/dev | awk '{print $9}'`
        rx3=$(((rx2-rx1)/128/3))
        tx3=$(((tx2-tx1)/128/3))

        echo "`date '+%k:%M:%S'` : $rx3 / $tx3"

