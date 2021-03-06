COMPILE = /usr/local/bin/nbc
NBCFLAGS = -q -EF -Z2
DOWNLOAD = /usr/local/bin/nbc -S=usb -d -b

BumpWanderer: BumpWanderer.nxc
	$(COMPILE) -EF -S=usb -d LineFollower.nxc

LineFollower: LineFollower.rxe
	$(DOWNLOAD) LineFollower.rxe

LineFollower.rxe: LineFollower.nxc
	$(COMPILE) -EF -v=132 -O=$@ $<

.PHONY:

clean: 
	rm -f *~ *.sym *.rxe *.log
