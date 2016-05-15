#!/bin/sh

chown -R www-data:www-data /srv/www/magento1/ausger/current/
cd /srv/www/magento1/ausger/current
find . -type f -exec chmod 440 {} \;
find . -type d -exec chmod 540 {} \;
find var/ -type f -exec chmod 640 {} \;
find media/ -type f -exec chmod 640 {} \;
find var/ -type d -exec chmod 740 {} \;
find media/ -type d -exec chmod 740 {} \;
chmod 740 includes
chmod 640 includes/config.php


