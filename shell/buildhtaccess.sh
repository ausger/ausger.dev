#!/bin/bash
# Author: Colin Mollenhour
#
# Usage: Run from the webroot, .htaccess-combined will be created.

dest='.htaccess-combined'
pwd=`pwd`
echo -n "" > $dest
while read -r file; do
  loc=`dirname $file`
  if [[ "$loc" =~ '^\./downloader/pearlib/\w+' ]]; then continue; fi
  if [[ "$loc" = "." ]]; then
    dir=$pwd
  else
    dir="$pwd/${loc#*/}"
  fi
  echo "<Directory $dir >" >> $dest
  cat $file | sed 's/^/  /' | awk 1 >> $dest
  echo -e "</Directory>\n" >> $dest
done < <(find -L . -name \.htaccess -type f | awk '{ print length, $0 }' | sort -n | awk '{$1=""; print $0}')