class contrail::control::provision_control (
  $api_address                = '127.0.0.1',
  $api_port                   = 8082,
  $router_asn                 = 64512,
  $control_node_address       = $::ipaddress,
  $control_node_name          = $::hostname,
  $keystone_admin_user        = 'admin',
  $keystone_admin_password    = 'password',
  $keystone_admin_tenant_name = 'admin',
  $ibgp_auto_mesh             = true,
  $oper                       = 'add',
) {

  if $ibgp_auto_mesh {
    $ibgp_auto_mesh_opt = '--ibgp_auto_mesh'
  } else {
    $ibgp_auto_mesh_opt = '--no_ibgp_auto_mesh'
  }

  exec { "provision_control.py ${control_node_name}" :
    command => "python /opt/contrail/utils/provision_control.py \
                 --host_name $control_node_name \
                 --host_ip $control_node_address \
                 --router_asn $router_asn \
                 $ibgp_auto_mesh_opt \
                 --api_server_ip $api_address \
                 --api_server_port $api_port \
                 --admin_user $keystone_admin_user \
                 --admin_password $keystone_admin_password \
                 --admin_tenant $keystone_admin_tenant_name \
                 --oper $oper"
  }
}
