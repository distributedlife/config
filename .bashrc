PATH=/usr/local/bin:/usr/local/sbin:$PATH;
#PATH=$PATH:$HOME/.rvm/bin; # Add RVM to PATH for scripting
[[ -s "$HOME/.rvm/scripts/rvm" ]] && . "$HOME/.rvm/scripts/rvm"
export ANDROID_HOME=~/projects/android-sdk-macosx;
export CABAL_DIR=~/Library/Haskell/bin;
export MDTOOL_PATH=/Applications/MonoDevelop.app/Contents/MacOS/;
export SSL_CERT_FILE=~/projects/config/cacert.pem;

export PATH=${PATH}:${ANDROID_HOME}/tools/:${ANDROID_HOME}/platform-tools/:${MONO_PATH}:${CABAL_DIR};
