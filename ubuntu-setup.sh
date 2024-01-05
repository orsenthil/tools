sudo apt update
sudo apt upgrade

vim /etc/apt/sources.list

# make sure these are uncommented

deb http://us.archive.ubuntu.com/ubuntu hirsute main restricted
deb-src http://us.archive.ubuntu.com/ubuntu hirsute main restricted

sudo apt update
sudo apt-get build-dep -y python3

sudo apt-get install -y xclip build-essential libssl-dev libffi-dev python3-dev python3-dev libreadline-dev libncursesw5-dev libssl-dev libsqlite3-dev tk-dev libgdbm-dev libc6-dev libbz2-dev liblzma-dev libgdbm-compat-dev python3-distutils python3-testresources python3-pip bmon slurm tcptrack cmatrix sl tmux vim docker.io build-essential silversearcher-ag unzip python-is-python3 golang neovim jq

sudo passwd ubuntu

sudo usermod -aG docker $USER
logout

# Install pip
cd ~/
wget https://bootstrap.pypa.io/get-pip.py
sudo python3 get-pip.py

# Install homebrew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

echo 'eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"' >> /home/ubuntu/.bashrc

# creating ssh keys

ssh-keygen -t ed25519 -C "Senthil Kumaran"

# SSH agent in the background

eval "$(ssh-agent -s)"

# Add SSH keys

ssh-add ~/.ssh/id_ed25519

# Copy the ssh keys

cat ~/.ssh/id_ed25519.pub

# Add to your Github SSH profiles

# Enabling GUI

sudo usermod -aG admin ubuntu
sudo usermod -aG sudo ubuntu

export DEBIAN_FRONTEND=noninteractive
sudo apt-add-repository ppa:ubuntu-mate-dev/ppa
sudo apt-get update && sudo apt-get upgrade
sudo apt-get install --no-install-recommends ubuntu-mate-core ubuntu-mate-desktop
sudo apt-get install mate-core mate-desktop-environment mate-notification-daemon
sudo apt-get install xrdp
sudo apt install firefox

echo mate-session> ~/.xsession
sudo cp /home/ubuntu/.xsession /etc/skel

sudo service xrdp restart

sudo dpkg-reconfigure tzdata
