#!/bin/sh
export LANG=en_US.utf8

NowDate=$(date +%Y%m%d)-$(date +%H%M)
PLUGIN_HOME=$1
cd $PLUGIN_HOME; 
git config --global user.name "soju6jan"
git config --global user.email "cybersol@naver.com"
git remote set-url origin git@github.com:flaskfarm/.epg.db.git
git --git-dir=$PLUGIN_HOME/.git pull;
git --git-dir=$PLUGIN_HOME/.git add $PLUGIN_HOME/epg_upload.sh;
git --git-dir=$PLUGIN_HOME/.git add $PLUGIN_HOME/epg_data.db;
git --git-dir=$PLUGIN_HOME/.git add $PLUGIN_HOME/xmltv.xml;
git --git-dir=$PLUGIN_HOME/.git add $PLUGIN_HOME/UPDATED_TIME;
git --git-dir=$PLUGIN_HOME/.git commit -m $NowDate;
git --git-dir=$PLUGIN_HOME/.git push