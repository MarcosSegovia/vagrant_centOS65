
dir='/vagrant/modules/'
dir_my_module='/vagrant/modules/my_module'

puppet module install example42/yum --modulepath $dir --version 2.1.25;
puppet module install example42/php  --modulepath $dir --version 2.0.25;
puppet module install puppetlabs-apache --modulepath $dir --version 1.6.0;
puppet module install puppetlabs/mysql --modulepath $dir --version 3.6.1;
puppet module install example42/memcached --modulepath $dir --version 3.0.5;
puppet module install crayfishx/firewalld --modulepath $dir --version 1.2.3;
puppet module install example42-timezone --modulepath $dir --version 2.0.13;
puppet module install example42/ntp --modulepath $dir --version 2.0.15;
puppet module install willdurand-composer --modulepath $dir --version 1.1.1;

if [ ! -d "$dir_my_module" ]; then
  # Control will enter here if $DIRECTORY exists.
	yum install -y git
	git clone https://github.com/MarcosSegovia/my_module.git;
	mv my_module $dir;
fi

exit 0;
