#!/bin/sh
export LANG=en_US.utf8
NowDate=$(date +%Y%m%d)-$(date +%H%M)
PLUGIN_HOME=$1
cd $PLUGIN_HOME; 
git --git-dir=$PLUGIN_HOME/.git pull;
git --git-dir=$PLUGIN_HOME/.git add $PLUGIN_HOME/epg_data.db;
git --git-dir=$PLUGIN_HOME/.git add $PLUGIN_HOME/xmltv.xml;
git --git-dir=$PLUGIN_HOME/.git add $PLUGIN_HOME/UPDATED_TIME;
git --git-dir=$PLUGIN_HOME/.git commit -m $NowDate;
git --git-dir=$PLUGIN_HOME/.git push