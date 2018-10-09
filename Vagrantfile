$script = <<-SCRIPT
echo I am provishioning...
apt-get update -y
apt-get install -y python3-pip
apt-get install -y emacs vim git sqlite3
pip3 install pipenv
pip3 install autopep8
pip3 install black
pip3 install pylint
pip3 install flake8
SCRIPT

Vagrant.configure("2") do |config|
  config.vm.box = "bento/ubuntu-18.04"
  config.vm.box_version = "201803.24.0"
  config.vm.provision "shell", inline: $script
  config.vm.network "forwarded_port", guest: 8080, host: 8080
end
