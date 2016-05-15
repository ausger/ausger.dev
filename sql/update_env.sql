update core_config_data set value = 'http://www.ausger.de/' where path = 'web/unsecure/base_url';
update core_config_data set value = 'https://www.ausger.de/' where path = 'web/secure/base_url';	
update core_config_data set value = 'www-data' where path = 'system/cron/cronUser';		
update core_config_data set value = '/usr/bin' where path = 'sphinxsearch/search/sphinxpath';
update core_config_data set value = '0' where path = 'google/analytics/active';
update core_config_data set value = '0' where path = 'advanced/modules_disable_output/Fooman_SpeedsterAdvanced';	
update core_config_data set value = '1' where path = 'advanced/modules_disable_output/Aoe_TemplateHints';
update core_config_data set value = '1' where path = 'advanced/modules_disable_output/Alanstormdotcom_Layoutviewer';
update core_config_data set value = '0' where path = 'advanced/modules_disable_output/Juicy_Geoip';
update core_config_data set value = '0' where path = 'dev/aoe_templatehints/enablePhpstormRemoteCall';
update core_config_data set value = '1' where path = 'web/secure/use_in_frontend';	

	

update core_config_data set value = 'js/magestore/onestepcheckout.js' where path = 'dev/js/speedster_merge_blacklist';
update core_config_data set value = '' where path = 'dev/css/speedster_merge_blacklist';	


update core_cache_option set value = '1' where code = 'block_html';
update core_cache_option set value = '1' where code = 'collections';
update core_cache_option set value = '1' where code = 'config';
update core_cache_option set value = '1' where code = 'config_api';
update core_cache_option set value = '1' where code = 'config_api2';
update core_cache_option set value = '1' where code = 'eav';
update core_cache_option set value = '1' where code = 'fpc';
update core_cache_option set value = '1' where code = 'layout';
update core_cache_option set value = '1' where code = 'translate';

	
	
	