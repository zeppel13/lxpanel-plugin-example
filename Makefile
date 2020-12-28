all:
	gcc -Wall `pkg-config --cflags gtk+-2.0 lxpanel` -shared -fPIC testplugin.c -o test.so `pkg-config --libs lxpanel`
install:
	sudo cp ./test.so /usr/lib/lxpanel/plugins/test.so
run:
	lxpanelctl restart
	@echo "add new plugin to lxpanel"
help:
	@echo "all | install | run | help"
	@echo "see for yourself on"
	@echo "https://wiki.lxde.org/en/How_to_write_plugins_for_LXPanel"
