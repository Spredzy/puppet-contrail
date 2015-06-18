class contrail::keystone (
  $keystone_config = {},
) {

  validate_hash($keystone_config)

  create_resources('contrail_keystone_config', $keystone_config)

}
