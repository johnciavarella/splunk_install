#quick script install splunk baremetal
read splunk_install

groupadd splunk; useradd -g splunk -d /home/splunk splunk; passwd -l splunk; wget -O $splunk_install; tar -xzvf /opt/splunk.tgz -C /opt;/opt/splunk/bin/splunk start --accept-license; ./splunk enable boot-start -u splunk


./splunk start --accept-license
./splunk enable boot-start
