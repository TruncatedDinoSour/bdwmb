RUNAS := sudo

all: install

install:
	mkdir -p ~/.config/bdwmb
	mkdir -p ~/.config/bdwmb/modules
	cp config.sh ~/.config/bdwmb

uninstall:
	rm -rf ~/.config/bdwmb
	${RUNAS} rm -rf /usr/local/bin/bdwmb /usr/local/bin/modules

bin:
	mkdir -p /usr/local/bin
	cp bdwmb.sh /usr/local/bin/bdwmb
	chmod a+rx /usr/local/bin/bdwmb
	cp -r modules /usr/local/bin

full:
	make uninstall
	make install
	${RUNAS} make bin

