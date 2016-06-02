
cp current version directory to the new version
run remote_deploy_trial_run.sh and review the changes.
run remote_deploy.sh
run change-project-permission.sh

import dump into the backup database
run update_env.sql
run sphinx_catalog_fulltxt_schema.sql

create maintenance.flag
update database name in app/etc/local.xml

reset current link to the new version directory
clean up media/js and media/css
start apache
clear redis cache
run magento reindex
check sphinx_catalog_fulltxt table is populated.
Goto browser, check website
if Website is good,

enable cache in admin
stop Sphinx
ps aux | grep searchd
searchd --stop


update database name in /etc/sphinxsearch/sphinx.conf
rerun Sphinx indexing
restart Sphinx
indexer --all
searchd

update Paypal & Alipay Account Information
regenerate Google sitemap