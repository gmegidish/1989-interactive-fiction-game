
all: 1989.dsk

AppleCommander-ac-1.6.0.jar:
	curl -o $@ -L -s "https://github.com/AppleCommander/AppleCommander/releases/download/v1-6-0/AppleCommander-ac-1.6.0.jar"

1989.dsk: adayin1989.bas AppleCommander-ac-1.6.0.jar
	LONG_LINES=$( cat adayin1989.bas | awk 'length >= 250' | wc -l)
	
	cp -f MASTER.DSK $@
	java -jar AppleCommander-ac-1.6.0.jar -d 1989.dsk HELLO
	java -jar AppleCommander-ac-1.6.0.jar -bas 1989.dsk HELLO < hello.bas
	java -jar AppleCommander-ac-1.6.0.jar -bas 1989.dsk 1989.BAS < adayin1989.bas

clean:
	rm -f AppleCommander-ac-1.6.0.jar
	rm -f 1989.dsk
	
