export DISPLAY=:0
Xvfb :0 -screen 0 1024x768x24 &
x11vnc -forever &

export WINEARCH=win32

winetricks -q corefonts
winetricks -q windowscodecs
msiexec /i wine-mono-7.0.0-x86.msi
winetricks -q python27
winetricks -q autohotkey

7z x pycrypto-2.6.1.win32-py2.7.exe PLATLIB/Crypto
mv PLATLIB/Crypto ".wine/drive_c/Python27/Lib/site-packages"
rmdir PLATLIB

7z x -aos -o".wine/drive_c/Program Files/Adobe/Adobe Digital Editions 2.0/" ADE_2.0_Installer.exe
mkdir -p "My Digital Editions"

if [ "${1:-}" != "--manual-id" ]; then
    wine ".wine/drive_c/Program Files/AutoHotkey/AutoHotkey.exe" "machine.ahk" &
fi
wine ".wine/drive_c/Program Files/Adobe/Adobe Digital Editions 2.0/DigitalEditions.exe"

wineserver --kill
