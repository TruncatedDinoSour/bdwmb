RUNAS ?= sudo
PREFIX ?= /usr/local

all: install

install:
	mkdir -p ~/.config/bdwmb
	mkdir -p ~/.config/bdwmb/modules
	if [ ! -f ~/.config/bdwmb/config.sh ]; then cp config.sh ~/.config/bdwmb; fi

uninstall:
	${RUNAS} rm -rf ${PREFIX}/bin/bdwmb ${PREFIX}/bin/bdwmb_modules

bin:
	mkdir -p ${PREFIX}/bin
	cp bdwmb.sh ${PREFIX}/bin/bdwmb
	chmod a+rx ${PREFIX}/bin/bdwmb
	cp -r bdwmb_modules ${PREFIX}/bin

git:
	git add .
	git commit -m "update @ $(shell date)"
	git push -u origin main

full:
	make uninstall
	make install
	${RUNAS} make bin

