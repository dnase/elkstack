apt-get update -y
puppet module install puppetlabs-java --version 2.4.0
puppet module install elastic-elasticsearch --version 6.3.0
puppet module install elastic-logstash --version 6.1.2
puppet module install elastic-kibana --ignore-dependencies
puppet apply /vagrant/puppetcode/bootstrap.pp --modulepath=/etc/puppetlabs/code/environments/production/modules:/etc/puppetlabs/code/modules:/opt/puppetlabs/puppet/modules:/vagrant/puppetcode
