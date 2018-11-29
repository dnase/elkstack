class lsconfig {
  include ::java
  include ::elasticsearch
  $hostip = $::networking['interfaces']['enp0s8']['ip']
  $instance_name = "ls-${::hostname}"
  elasticsearch::instance { $instance_name:
    config => {
      'network.host' => $hostip,
    }
  }
  include ::logstash
  logstash::configfile { 'ls_config':
    content => epp('lsconfig/config.epp'),
  }
  class { '::kibana':
    config => {
      'server.host' => $hostip,
      'elasticsearch.url' => "http://${hostip}:9200/",
    }
  }
}
