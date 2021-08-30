RUNAS := sudo

all: install

install:
	mkdir -p ~/.config/bdwmb
	mkdir -p ~/.config/bdwmb/modules
	if [ ! -f ~/.config/bdwmb/config.sh ]; then cp config.sh ~/.config/bdwmb; fi

uninstall:
	${RUNAS} rm -rf /usr/local/bin/bdwmb /usr/local/bin/bdwmb_modules

bin:
	mkdir -p /usr/local/bin
	cp bdwmb.sh /usr/local/bin/bdwmb
	chmod a+rx /usr/local/bin/bdwmb
	cp -r bdwmb_modules /usr/local/bin

full:
	make uninstall
	make install
	${RUNAS} make bin

