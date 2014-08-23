#!/bin/sh
SERVICE='python ./run_p2pool.py --net cannabiscoin'

if ps ax | grep -v grep | grep "$SERVICE" > /dev/null
then
        echo "$SERVICE is already running!"
else
        screen  -m -S screen420 python ./run_p2pool.py --net cannabiscoin --give-author 0 --disable-upnp -f 1 -a CGm5kHHNUf9sWMHPZpjd4gSRpKznDBbmVm

	wait
fi
