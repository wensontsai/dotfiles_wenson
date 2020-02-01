#### CHECK FOR HASKELL
if [ -e ~/.ghcup/bin/cabal ]; then
    printf "$COLOR_PURPLE[2]$normal Haskell found, skipping install of that...\n"
else
    printf "$COLOR_PURPLE[2]$normal Installing Haskell (via 'ghcup')...\n"
        curl https://get-ghcup.haskell.org -sSf | BOOTSTRAP_HASKELL_NONINTERACTIVE=1 sh 2>&1 > /tmp/ghcup-install.log
        if [ $(grep -c ghcup ~/.bashrc) -ne 0 ]; then
            printf "$COLOR_PURPLE[2.1]$normal Adding ghcup initialisation to ~/.bashrc...\n"
            echo '. $HOME/.ghcup/env' >> "$HOME/.bashrc"
        fi
fi

#### Stack
brew install haskell-stack

#### Install ghci
stack exec -- ghci
# stack ghci