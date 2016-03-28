#!/bin/shell

# change number one
WEB_DIR="ausger_strato@81.169.245.88:/srv/www/magento1/ausger/current/"
WC_DIR="/Users/leishang/helenstreet/php/magento/ausger.dev.1.9.2.4/"
CACHE_DIR="/srv/www/magento1/ausger/current/var/cache/*"
# ..same as usual up to this point...#

# rsync with web root
/usr/bin/rsync --archive \
        --delete \
        --exclude=copyscript \
        --exclude=/magmi \
        --exclude=/vendor \
        --exclude=.idea \
        --exclude=.gitignore \
        --exclude=.git \
        --exclude=composer.json \
        --exclude=composer.lock \
        --exclude=index.php.sample \
        --exclude=/shell/ausger-dev-liwus-all-dump-v0.9.sql \
        --exclude=/shell/buildhtaccess.sh \
        --exclude=/shell/remote_deploy.sh \
        --exclude=/shell/iptables-ausger \
        --exclude=php.ini.sample \
        --exclude=install.php \
        --exclude=/dev \
        --exclude=/downloader \
        --exclude=*.log \
        --exclude=*.htaccess* \
        --exclude=/feeds/* \
        --exclude=sitemap.xml \
        --exclude=/cgi-bin/ \
        --exclude=/app/etc/local.xml \
        --exclude=/sh/ \
        --exclude=/includes/src/ \
        --exclude=/nbproject/ \
        --exclude=/pkginfo/ \
        --exclude=/tmp/ \
        --exclude=/var/ \
        --exclude=Thumbs.db \
        --exclude=.DS_Store \
        -e "ssh -p 22" \
        $WC_DIR \
        $WEB_DIR

# clear the caches
# ssh -p 22 root@liveserver.com "rm -rf $CACHE_DIR"