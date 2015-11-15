
dir='/vagrant/modules/'

puppet module install puppetlabs/stdlib --modulepath $dir --version 4.9.0;
puppet module install puppetlabs/concat --modulepath $dir --version 1.2.4;
puppet module install example42/puppi --modulepath $dir --version 2.1.12;
puppet module install example42/yum --modulepath $dir --version 2.1.25;
puppet module install example42/php  --modulepath $dir --version 2.0.25;
puppet module install puppetlabs-apache --modulepath $dir --version 1.6.0;
puppet module install puppetlabs/mysql --modulepath $dir --version 3.6.1;
puppet module install example42/memcached --modulepath $dir --version 3.0.5;
git clone https://github.com/MarcosSegovia/my_module.git;
mv my_module $dir;
