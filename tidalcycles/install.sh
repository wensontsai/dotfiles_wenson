#### INSTALL TIDALCYCLES
printf "$COLOR_PURPLE[3]$normal Congratulations, you have all the pre-reqs...\n"
echo "Installing tidalcycles haskell library (via cabal)..."
echo ""
. "$HOME/.ghcup/env"
cabal v2-update
cabal v2-install tidal --lib