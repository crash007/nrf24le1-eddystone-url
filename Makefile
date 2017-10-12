COMPORT=/dev/ttyUSB0
SERIAL_MONITOR=gnome-terminal -e 'minicom --device $(COMPORT)'

CCFLAGS =-I ./include -L ./lib/* --std-sdcc99 --model-large --code-loc 0x0000 --code-size 0x4000 --xram-loc 0x0000 --xram-size 0x400

main: main.c
	sdcc $(CCFLAGS) main.c
	packihx main.ihx > main.hex
	./programmer.pl main.hex $(COMPORT)
#	$(SERIAL_MONITOR)
	rm -f *.asm *.ihx *.lk *.lst *.map *.mem *.rel *.rst *.sym *.lnk *.hex
