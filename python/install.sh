### get python from brew, NOT python.org frameworks...
# in case shit is fucked... `sudo rm -Rf /Library/Frameworks/Python.framework/Versions/*`
# then you need to do a `brew link python`
brew install python

#### ANACONDA
brew cask install anaconda

### virtualenv
python -m pip install virtualenv

### install python 3.7.4
python -m pip install -U numpy scipy scikit-learn jupyter pandas

### flask.
python -m pip install flask