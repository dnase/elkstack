apt-get update -y
puppet module install elastic-logstash --version 6.1.2
puppet module install puppetlabs-java --version 2.4.0
puppet apply /vagrant/puppetcode/bootstrap.pp --modulepath=/etc/puppetlabs/code/environments/production/modules:/etc/puppetlabs/code/modules:/opt/puppetlabs/puppet/modules:/vagrant/puppetcode
