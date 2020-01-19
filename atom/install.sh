#### INSTALL ATOM
if test "${mydistro}" = "darwin"; then
    if [ -d "/Applications/Atom.app" ]; then
    printf "$COLOR_PURPLE[4]$normal Atom already installed, skipping...\n"
    else
    printf "$COLOR_PURPLE[4]$normal Installing Atom...\n"
    curl -Lk https://atom.io/download/mac --output /tmp/atom.zip
    unzip -q "/tmp/atom.zip" -d /Applications
    rm /tmp/atom.zip
    fi
else
    if command -v atom 2>/dev/null; then
    printf "$COLOR_PURPLE[4]$normal Atom already installed.\n"
    else
    printf "$COLOR_PURPLE[4]$normal Downloading and installing the Atom editor...\n"
    curl -Lk https://atom.io/download/deb --output /tmp/atom.deb
    sudo apt -qqy install /tmp/atom.deb
    rm /tmp/atom.deb
    fi
fi

printf "$COLOR_PURPLE[6]$normal Installing atom TidalCycles plugin...\n"
if test "${mydistro}" = "darwin"; then
    /Applications/Atom.app/Contents/Resources/app/apm/bin/apm install tidalcycles
else
    apm install tidalcycles
fi