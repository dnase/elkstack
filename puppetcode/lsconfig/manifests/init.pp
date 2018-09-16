class lsconfig {
  include ::java
  include logstash
  logstash::configfile { 'ls_config':
    content => epp('lsconfig/config.epp'),
  }
  Class['java'] -> Class['logstash']
}
