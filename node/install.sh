# if test ! $(which spoof)
# then
#   if test $(which npm)
#   then
#     sudo npm install spoof -g
#   fi
# fi

#### INSTALL NODE / NPM
brew install node

#### NPM global packages
npm i -g yarn

#### INSTALL NVM
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.35.2/install.sh | bash

#### Install LTS stable version of Node/ NPM
nvm install stable

#### ELM
# npm i create-elm-app -g