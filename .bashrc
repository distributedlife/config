PATH=/usr/local/bin:/usr/local/sbin:$PATH;
#PATH=$PATH:$HOME/.rvm/bin; # Add RVM to PATH for scripting
[[ -s "$HOME/.rvm/scripts/rvm" ]] && . "$HOME/.rvm/scripts/rvm"
export ANDROID_HOME=~/projects/android-sdk-macosx/;
export MDTOOL_PATH=/Applications/MonoDevelop.app/Contents/MacOS/;
export PATH=${PATH}:${ANDROID_HOME}/tools:${ANDROID_HOME}/platform_tools:${MONO_PATH};
