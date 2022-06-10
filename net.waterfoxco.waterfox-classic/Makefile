all: build

build:
	./mach build

clean:
	./mach clobber

install:
	$(PYTHON) ./mach $@
	desktop-file-install --dir $(prefix)/share/applications net.waterfoxco.Waterfox-g4.desktop
	mkdir -p $(prefix)/share/icons/hicolor/64x64/apps/ $(prefix)/share/appdata
	#cp -p browser/branding/aurora/firefox64.ico $(prefix)/share/icons/hicolor/64x64/apps/net.waterfoxco.Waterfox-g4.png
	cp -p net.waterfoxco.Waterfox-g4.appdata.xml $(prefix)/share/appdata
	mv $(prefix)/bin/waterfox $(prefix)/bin/waterfox-g4
	# Create wrapper script which will make files downloaded for opening available outside of sandbox
	echo '#!/bin/bash' > $(prefix)/bin/waterfox-g4
	echo 'export TMPDIR=$$XDG_CACHE_HOME/tmp' >> $(prefix)/bin/waterfox-g4
	echo 'waterfox-g4-bin $$*' >> $(prefix)/bin/waterfox-g4
	chmod +x $(prefix)/bin/waterfox-g4

.PHONY: all build clean install