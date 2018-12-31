# salt

wget https://bootstrap.saltstack.com -O /tmp/bootstrap-salt.sh

sh /tmp/bootstrap-salt.sh

apt-get install git

git clone https://github.com/claudio-walser/salt.git /srv/salt

salt-call --local state.apply
