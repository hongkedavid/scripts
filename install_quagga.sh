apt-get install texinfo
wget http://download.savannah.gnu.org/releases/quagga/quagga-0.99.24.tar.gz
autoreconf --force --install
./configure
make
make install
