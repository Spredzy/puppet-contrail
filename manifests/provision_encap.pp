class contrail::provision_encap (
  $api_address                = '127.0.0.1',
  $api_port                   = 8082,
  $encap_priority             = 'MPLSoUDP,MPLSoGRE,VXLAN',
  $vxlan_vn_id_mode           = 'automatic',
  $keystone_admin_user        = 'admin',
  $keystone_admin_password    = 'password',
  $keystone_admin_tenant_name = 'admin',
  $oper                       = 'add',
) {

  exec { 'provision_encap.py' :
    command => "python /opt/contrail/utils/provision_encap.py \
                 --api_server_ip $api_address \
                 --api_server_port $api_port \
                 --encap_priority $encap_priority \
                 --vxlan_vn_id_mode $vxlan_vn_id_mode \
                 --admin_user $keystone_admin_user \
                 --admin_password $keystone_admin_password \
                 --oper $oper"
  }

}
