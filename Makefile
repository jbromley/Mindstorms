COMPILE = /usr/local/bin/nbc
NBCFLAGS = -EF -Z2 -q
DOWNLOAD = /usr/local/bin/nbc

BumpWanderer: BumpWanderer.nxc
	$(COMPILE) -EF -S=usb -d LineFollower.nxc

LineFollower: LineFollower.nxc
	$(COMPILE) -EF -S=usb -d LineFollower.nxc

.PHONY:

clean: 
	rm -f *~ *.sym *.rxe *.log

