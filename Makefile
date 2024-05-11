#!/usr/bin/env make -f


APP_NAME:=femtocom
INSTALL_DIR:=$$(HOME)/.local/bin


install: $(APP_NAME)
	chmod  a+x  $^
	mkdir  -p   $(INSTALL_DIR)
	cp  -f  $^  $(INSTALL_DIR)


uninstall: $(INSTALL_DIR)/$(APP_NAME)
	rm  -f  $^


