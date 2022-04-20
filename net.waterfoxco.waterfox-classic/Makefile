all: build

build:
	./mach build

clean:
	./mach clobber

install:
	$(PYTHON) ./mach $@
	desktop-file-install --dir $(prefix)/share/applications net.waterfoxco.Waterfox-Classic.desktop
	mkdir -p $(prefix)/share/icons/hicolor/64x64/apps/ $(prefix)/share/appdata
	#cp -p browser/branding/aurora/firefox64.ico $(prefix)/share/icons/hicolor/64x64/apps/net.waterfoxco.Waterfox-Classic.png
	cp -p net.waterfoxco.Waterfox-Classic.appdata.xml $(prefix)/share/appdata
	mv $(prefix)/bin/waterfox $(prefix)/bin/waterfox-classic
	# Create wrapper script which will make files downloaded for opening available outside of sandbox
	echo '#!/bin/bash' > $(prefix)/bin/waterfox-classic
	echo 'export TMPDIR=$$XDG_CACHE_HOME/tmp' >> $(prefix)/bin/waterfox-classic
	echo 'waterfox-classic-bin $$*' >> $(prefix)/bin/waterfox-classic
	chmod +x $(prefix)/bin/waterfox-classic

.PHONY: all build clean install