sudo apt-get update
sudo apt-get install spatialite-bin libimage-exiftool-perl libspatialite-dev python-pip -y

pip install python-magic

if lsb_release -d -s | grep -q 16.04; then
	sudo apt-get install libsqlite3-mod-spatialite
fi