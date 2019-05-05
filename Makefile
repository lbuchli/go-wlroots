WAYLAND_PROTOCOLS=/usr/share/wayland-protocols

all: tinywl

hacky: hackywl

tinywl: prep xdg-shell-protocol
	go build -o build/bin/tinywl github.com/lbuchli/go-wlroots/cmd/tinywl

hackywl: prep xdg-shell-protocol
	go build -o build/bin/hackywl github.com/lbuchli/go-wlroots/cmd/hackywl

xdg-shell-protocol:
	wayland-scanner private-code $(WAYLAND_PROTOCOLS)/stable/xdg-shell/xdg-shell.xml wlroots/xdg-shell-protocol.c
	wayland-scanner server-header $(WAYLAND_PROTOCOLS)/stable/xdg-shell/xdg-shell.xml wlroots/xdg-shell-protocol.h

prep:
	mkdir -p build/bin

clean:
	rm -rf build wlroots/xdg-shell-protocol.c wlroots/xdg-shell-protocol.h
