# If running from tty1 start sway
if [ "$(tty)" = "/dev/tty1" ]; then
    exec dbus-run-session sway
fi
