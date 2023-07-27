echo "Start.."

echo "Update ports"

portsnap fetch
portsnap extract

echo "Install pkg.."
pkg
echo "Install neofetch.."
pkg install neofetch
echo "Install xorg.."
pkg  install xorg
echo "Install xfce4.."
pkg install xfce4
echo "Install slim.."
pkg install slim
echo "Compile xfce4.."
cd /ust/ports/x11-wm/xfce4
make install clean

echo (cat << EOF
Next you should edit the .xinitrc file in your home directory and write "exec xfce4start" there.

And also add lines to the /etc/rc.conf file:
=================
slim_enable="YES"
dbus_enable="YES"
hald_enables="YES"
==================
EOF
)
