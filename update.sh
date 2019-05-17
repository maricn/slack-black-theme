#!/usr/bin/env zsh

for file in "/Applications/Slack.app/Contents/Resources/app.asar.unpacked/src/static/ssb-interop.js" "/Applications/Slack.app/Contents/Resources/app.asar.unpacked/src/static/index.js"; do
  gsed -i -e '/^\/\/-----THIS BELONGS TO SLACK-BLACK-THEME-----$/,$ d' $file
  cat injecter.js >> $file
done

