node 'master' {
#  include puppet
#  class { 'ntp::ntp': }
#  class { 'mysql::mysql-install': }
#  class { 'mysql::mysql-create-db': }
#  class { 'rabbit::rabbitmq': }
#  class { 'keystone::install::install': }
#class { 'keystone::define::define': }
#class { 'keystone::service-endpoint::service': }
#class { 'keystone::service-endpoint::service-endpoint': }
#class { 'glance::glance-sync': }
#class { 'nova::controller::nova-sync': }
#class { 'dashboard::dashboard-install': }
#class { 'cinder::cinder-install': }
#class { 'cinder::storage': }
#class { 'neutron::controller::neutron-install': }
#class { 'neutron::controller::neutron-conf': }
#class { 'neutron::controller::neutron-api': }
#class { 'neutron::controller::neutron-ml2': }
#class { 'neutron::controller::neutron-agent': }
#class { 'neutron::controller::ovs': }
#class { 'swift::swift-install': }->
#class { 'swift::storage-node::storage-node-conf': }->
#class { 'swift::proxy-node::swift-ring-builder': }
#class { 'heat::install-heat-packages': }
#class { 'heat::heat-conf': }
}
node 'agent' {
include puppet 
#class { 'ntp::ntp': }
#class { 'havana-repository::havana-repository': }
#class { 'nova::compute::nova-compute-conf': }
#class { 'neutron::compute::neutron-compute-install': }
#class { 'neutron::compute::compute-sysctl': }
#class { 'neutron::compute::neutron-compute-conf': }
#class { 'neutron::compute::neutron-compute-api': }
#class { 'neutron::compute::neutron-compute-ml2': }
class { 'neutron::compute::neutron-compute-ovs': }


}
