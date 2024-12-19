sudo apt install -y git python3-venv python3-pyscard build-essential libpcsclite-dev python3-dev python3-tk  -y
cd
git clone https://github.com/RubenHabibLaPlateforme/Badgeuse_Activity.git
cd Badgeuse_Activity
python3 -m venv ~/Badgeuse
patch controllers/App.py ~/badgeuse/app.patch
patch requirements.txt ~/badgeuse/requirements.patch
source ~/Badgeuse/bin/activate
pip3 install -r requirements.txt 
cd ~/badgeuse
sed -i "s/xxxxx/$USER/g" Badgeuse.desktop 
chmod +x Badgeuse.sh
cp Badgeuse.sh ../Badgeuse_Activity
cp Badgeuse.png ../Badgeuse_Activity
sudo cp Badgeuse.desktop ~/.local/share/applications/Badgeuse.desktop 
cd
rm ~/badgeuse -fr
