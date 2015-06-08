class contrail::database::config (
  $database_nodemgr_config = {},
) {

  validate_hash($database_nodemgr_config)

  create_resources('contrail_database_nodemgr_config', $database_nodemgr_config)

}
