class contrail::provision_linklocal (
  $api_address                = '127.0.0.1',
  $api_port                   = 8082,
  $linklocal_service_name     = 'metadata',
  $linklocal_service_ip       = '169.254.169.254',
  $linklocal_service_port     = 80,
  $ipfabric_service_ip        = '127.0.0.1',
  $ipfabric_service_port      = 8775,
  $keystone_admin_user        = 'admin',
  $keystone_admin_password    = 'password',
  $keystone_admin_tenant_name = 'admin',
  $oper                       = 'add',
) {

  exec { 'provision_linklocal.py' :
    command => "python /opt/contrail/utils/provision_linklocal.py \
                 --api_server_ip $api_address \
                 --api_server_port $api_port \
                 --linklocal_service_name $linklocal_service_name \
                 --linklocal_service_ip $linklocal_service_ip \
                 --linklocal_service_port $linklocal_service_port \
                 --ipfabric_service_ip $ipfabric_service_ip \
                 --ipfabric_service_port $ipfabric_service_port \
                 --admin_user $keystone_admin_user \
                 --admin_password $keystone_admin_password \
                 --admin_tenant $keystone_admin_tenant_name \
                 --oper $oper"
  }

}
