sudo apt-get update
sudo apt-get install spatialite-bin libimage-exiftool-perl libspatialite-dev python-pip -y

pip install python-magic

export PATH="$HOME/.rbenv/bin:$PATH" 
eval "$(rbenv init -)"

rbenv install 2.5.6
bundler install


if lsb_release -d -s | grep -q 16.04; then
	sudo apt-get install libsqlite3-mod-spatialite
fi