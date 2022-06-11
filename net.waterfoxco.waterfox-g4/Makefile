all: build

build:
	./mach build

clean:
	./mach clobber

install:
	$(PYTHON) ./mach $@
	desktop-file-install --dir $(prefix)/share/applications net.waterfoxco.waterfox-g4.desktop
	mkdir -p $(prefix)/share/icons/hicolor/64x64/apps/ $(prefix)/share/appdata
	cp -p browser/branding/waterfox/default128.png $(prefix)/share/icons/hicolor/64x64/apps/net.waterfoxco.waterfox-g4.png
	cp -p net.waterfoxco.waterfox-g4.appdata.xml $(prefix)/share/appdata
	rm $(prefix)/bin/firefox*
	ln -s $(prefix)/lib/firefox/firefox $(prefix)/bin/waterfox-bin
	# Create wrapper script which will make files downloaded for opening available outside of sandbox
	echo '#!/bin/bash' > $(prefix)/bin/waterfox
	echo 'export TMPDIR=$$XDG_CACHE_HOME/tmp' >> $(prefix)/bin/waterfox
	echo 'waterfox-bin $$*' >> $(prefix)/bin/waterfox
	chmod +x $(prefix)/bin/waterfox

.PHONY: all build clean install