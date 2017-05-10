if [ "$1" = "staging" ]; then
	cd /etc/ansible
	ansible-playbook /etc/ansible/staging/warDeploy.yml
	sleep 5m
	
	sudo mkdir /home/travis/build/RajeshkumarAyyadurai/staging/
	sudo chmod 777 /home/travis/build/RajeshkumarAyyadurai/staging
	cd /home/travis/build/RajeshkumarAyyadurai/staging/
	git clone https://github.com/RajeshkumarAyyadurai/securitytestv1.0.git
	cd /home/travis/build/RajeshkumarAyyadurai/staging/securitytestv1.0/
	ls -l /home/travis/build/RajeshkumarAyyadurai/staging/securitytestv1.0/lib/drivers/phantomjs
	chmod 755 /home/travis/build/RajeshkumarAyyadurai/staging/securitytestv1.0/lib/drivers/phantomjs
	cd /home/travis/build/RajeshkumarAyyadurai/staging/securitytestv1.0/
	mvn test
else
	cd /etc/ansible
	ansible-playbook /etc/ansible/prod/warDeploy.yml
	sleep 5m
	
	sudo mkdir /home/travis/build/RajeshkumarAyyadurai/prod/
	sudo chmod 777 /home/travis/build/RajeshkumarAyyadurai/prod
	cd /home/travis/build/RajeshkumarAyyadurai/prod/
	git clone https://github.com/RajeshkumarAyyadurai/securitytestv1.0.git
	cd /home/travis/build/RajeshkumarAyyadurai/prod/securitytestv1.0/
	ls -l /home/travis/build/RajeshkumarAyyadurai/prod/securitytestv1.0/lib/drivers/phantomjs
	chmod 755 /home/travis/build/RajeshkumarAyyadurai/prod/securitytestv1.0/lib/drivers/phantomjs
	cd /home/travis/build/RajeshkumarAyyadurai/prod/securitytestv1.0/
	mvn test
fi    