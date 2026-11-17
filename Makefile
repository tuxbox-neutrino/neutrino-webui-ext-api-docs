# Installs the API reference into Neutrino's web interface: the extension
# into the interface's extensions folder. The viewer it draws with comes
# with the package swagger-ui-dist.
#
#   make install DESTDIR=<root> HTTPDDIR=<the interface's folder on the box>

HTTPDDIR ?= /share/tuxbox/neutrino/httpd
EXTDIR = $(HTTPDDIR)/extensions/api-docs
FILES = LICENSE README.md icon.svg index.html manifest.json

install:
	install -d $(DESTDIR)$(EXTDIR)/languages
	install -m 0644 $(FILES) $(DESTDIR)$(EXTDIR)/
	install -m 0644 languages/*.json $(DESTDIR)$(EXTDIR)/languages/

uninstall:
	rm -rf $(DESTDIR)$(EXTDIR)

.PHONY: install uninstall
