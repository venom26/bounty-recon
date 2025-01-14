#!/bin/bash
mkdir ~/tools
cd ~/tools
echo "installing Sublist3r"
git clone https://github.com/aboul3la/Sublist3r.git
cd Sublist3r*
curl https://bootstrap.pypa.io/pip/2.7/get-pip.py --output get-pip.py
sudo python2 get-pip.py
pip install -r requirements.txt
sudo python setup.py install
cd ~/tools/
echo "done"
sudo apt-get install xdg-utils
cd ~/tools
echo "installing massdns"
git clone https://github.com/blechschmidt/massdns.git
cd ~/tools/massdns
make
cd ~/tools/
echo "done"

echo "Installing Chromium-Browser"
cd ~/tools/
git clone https://github.com/scheib/chromium-latest-linux.git
cd chromium-latest-linux
./update-and-run.sh
cd ~/tools
echo "Done"

git clone https://github.com/ebsa491/whichCDN.git
cd whichCDN
pip install -r requirements.txt
sudo chmod +x whichCDN
cd ~/tools

wget wget https://github.com/epi052/feroxbuster/releases/download/v2.3.0/x86_64-linux-feroxbuster.zip
unzip x86_64-linux-feroxbuster.zip
sudo chmod +x feroxbuster
sudo mv feroxbuster /usr/bin/
cd ~/tools

git clone https://github.com/KathanP19/JSFScan.sh.git
cd JSFScan.sh
sudo chmod +x install.sh
./install.sh
cd ~/tools

git clone https://github.com/theZiz/aha.git
cd aha
make
sudo cp aha /usr/bin/
cd ~/tools

git clone https://github.com/yassineaboukir/Asnlookup && cd Asnlookup
pip install -r requirements.txt
pip3 install -r requirements.txt
cd ~/tools

git clone https://github.com/sathishshan/Zone-transfer.git
cd Zone-transfer
sudo chmod +x zone-t.sh
cd ~/tools

echo "Installing Aquatone"
cd ~/tools
wget https://github.com/michenriksen/aquatone/releases/download/v1.7.0/aquatone_linux_amd64_1.7.0.zip
unzip aquatone_linux_amd64_1.7.0.zip
sudo mv aquatone /usr/bin/
rm -rf aquatone_linux_amd64_1.7.0.zip README.md LICENSE.txt
echo "done"
go get github.com/nytr0gen/deduplicate
cd ~/tools
git clone https://github.com/danielmiessler/SecLists.git
