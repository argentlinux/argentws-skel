PREFIX ?= /usr
SYSCONFDIR ?= /etc
DATADIR ?= $(PREFIX)/share

.PHONY: all install

all:

install:
	install -d $(DESTDIR)$(SYSCONFDIR) $(DESTDIR)$(DATADIR)/desktop-directories $(DESTDIR)$(DATADIR)/argent $(DESTDIR)$(DATADIR)/pixmaps
	cp -dR --no-preserve=ownership skel xdg $(DESTDIR)$(SYSCONFDIR)/
	install -m 644 share/argent/xdg/*.directory $(DESTDIR)$(DATADIR)/desktop-directories/
	cp -dR --no-preserve=ownership share/argent/img share/argent/xdg $(DESTDIR)$(DATADIR)/argent/
	install -m 644 share/argent/img/argent-weblink.png $(DESTDIR)$(DATADIR)/pixmaps/
