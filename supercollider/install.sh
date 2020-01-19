#### INSTALL SUPERCOLLIDER
if test "${mydistro}" = "darwin"; then
    if [ -d "/Applications/SuperCollider.app" ]; then
    printf "$COLOR_PURPLE[7]$normal SuperCollider already installed, skipping...\n"
    else
    printf "$COLOR_PURPLE[7]$normal Installing SuperCollider...\n"
    curl -Lk https://github.com/supercollider/supercollider/releases/download/Version-3.10.3/SuperCollider-3.10.3-macOS-signed.zip --output /tmp/sc3.zip
    unzip -q "/tmp/sc3.zip" "SuperCollider/SuperCollider.app/*" -d /tmp/testsc
    mv /tmp/testsc/SuperCollider/SuperCollider.app /Applications
    rm /tmp/sc3.zip
    fi

    if [ -e "~/Library/Application\ Support/SuperCollider/Extensions/StkInst.scx" ]; then
    printf "$COLOR_PURPLE[8]$normal sc3-plugins already installed, skipping...\n"
    else
    #### INSTALL PLUGINS
    printf "$COLOR_PURPLE[8]$normal Installing SuperCollider Plugins...\n"
    curl -Lk https://github.com/supercollider/sc3-plugins/releases/download/Version-3.10.0/sc3-plugins-3.10.0-macOS-signed.zip --output /tmp/sc3plugins.zip
    mkdir -p ~/Library/Application\ Support/SuperCollider/Extensions/
    unzip -q /tmp/sc3plugins.zip -d ~/Library/Application\ Support/SuperCollider/Extensions/
    rm /tmp/sc3plugins.zip
    fi
else
    if command -v scide 2>/dev/null; then
    printf "$COLOR_PURPLE[7]$normal SuperCollider already installed, skipping...\n"
    else
    printf "$COLOR_PURPLE[7]$normal Downloading, compiling and installing SuperCollider and sc3plugins...\n"
    mkdir ~/tidal-tmp
    cd ~/tidal-tmp
    git clone https://github.com/lvm/build-supercollider
    cd build-supercollider
    ./build-supercollider.sh
    ./build-sc3-plugins.sh
    fi

    printf "$COLOR_PURPLE[7.1]$normal Adding user to the 'audio' group.\n"
    sudo adduser $USER audio
fi