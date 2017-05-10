if [ $1 -eq "staging" ]; then
	cd /etc/ansible
	ansible-playbook /etc/ansible/staging/warDeploy.yml
	sleep 5m
	
	sudo mkdir /home/travis/build/RajeshkumarAyyadurai/$deploy_dir/
	sudo chmod 777 /home/travis/build/RajeshkumarAyyadurai/$deploy_dir
	cd /home/travis/build/RajeshkumarAyyadurai/$deploy_dir/
	git clone $repo_url
	cd /home/travis/build/RajeshkumarAyyadurai/$deploy_dir/securitytestv1.0/
	ls -l /home/travis/build/RajeshkumarAyyadurai/$deploy_dir/securitytestv1.0/lib/drivers/phantomjs
	chmod 755 /home/travis/build/RajeshkumarAyyadurai/$deploy_dir/securitytestv1.0/lib/drivers/phantomjs
	cd /home/travis/build/RajeshkumarAyyadurai/$deploy_dir/securitytestv1.0/
	mvn test
else
	cd /etc/ansible
	ansible-playbook /etc/ansible/prod/warDeploy.yml
	sleep 5m
	
	sudo mkdir /home/travis/build/RajeshkumarAyyadurai/$deploy_dir/
	sudo chmod 777 /home/travis/build/RajeshkumarAyyadurai/$deploy_dir
	cd /home/travis/build/RajeshkumarAyyadurai/$deploy_dir/
	git clone $repo_url
	cd /home/travis/build/RajeshkumarAyyadurai/$deploy_dir/securitytestv1.0/
	ls -l /home/travis/build/RajeshkumarAyyadurai/$deploy_dir/securitytestv1.0/lib/drivers/phantomjs
	chmod 755 /home/travis/build/RajeshkumarAyyadurai/$deploy_dir/securitytestv1.0/lib/drivers/phantomjs
	cd /home/travis/build/RajeshkumarAyyadurai/$deploy_dir/securitytestv1.0/
	mvn test
fi

    