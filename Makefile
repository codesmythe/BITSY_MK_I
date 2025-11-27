all: CONTROL.jed DECODE.jed MEMCTL.jed HIDECODE.jed HIDECODE_16MB.jed

%.jed: %.PLD
	$(HOME)/GALasm/src/galasm $^
clean:
	rm -f *.sch-bak *.kicad_pcb-bak *.chp *.fus *.pin

really_clean:
	rm -rf *.jed
