.PHONY: all clean
.DEFAULT: all

SUDO ?= sudo
export SUDO

DESTDIR ?=
export DESTDIR

PREFIX ?= /usr/local
export PREFIX

all:
	@cd stdlib && $(MAKE)

clean:
	@cd stdlib && $(MAKE) clean

install:
	@cd stdlib && $(MAKE) install
	@cd bin && $(MAKE) install
	@cd runtime && $(MAKE) install