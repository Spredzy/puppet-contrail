class contrail::vnc_api (
  $vnc_api_config = {},
) {

  validate_hash($vnc_api_config)

  create_resources('contrail_vnc_api_config', $vnc_api_config)

}
