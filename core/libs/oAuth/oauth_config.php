<?php

$provider     = ((empty($provider)) ? "None" : $provider);
$oauth_config = array(
	"callback"       => "https://redirects.nobidev.workers.dev/" . base64_encode(cl_link(cl_strf("oauth/%s", strtolower($provider)))) . "/",
	"providers"      => array(
		"Google"     => array(
			"enabled" => true,
			"keys"    => array(
				"id"     => $cl['config']['google_api_id'],
				"secret" => $cl['config']['google_api_key']
			),
		),
		"Facebook" => array(
			"enabled" => true,
			"keys"    => array(
				"id" => $cl['config']['facebook_api_id'], 
				"secret" => $cl['config']['facebook_api_key']
			),
			"scope" => "email",
			"trustForwarded" => false
		),
		"Twitter" => array(
			"enabled" => false,
			"keys" => array(
				"key" => $cl['config']['twitter_api_id'], 
				"secret" => $cl['config']['twitter_api_key']
			),
			"includeEmail" => true
		),
	),
	"debug_mode" => false,
	"debug_file" => "",
);
