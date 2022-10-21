#!/bin/sh

#########################################################################
# Plex Media Server script used to add Plex to the App Store as a repo  #
# Maintainer: Plex Build Team                                           #
#########################################################################

# Location of AppStore
APPSTORE=https://raw.githubusercontent.com/ukdtom/Testrepo/main/repo.xml

# Internal Vars, do not change
REPOFILE=/etc/config/3rd_pkg_v2.conf
REPONAME=plexinc
QPKGCONF=/etc/config/qpkg.conf
PMSINTNAME=PlexMediaServer

# Check if we already added the repo
if grep -q "d = $REPONAME" "$REPOFILE"; then
  echo "Plex Repo has already been added to your list of 3rd. Party AppStores"
else
  echo "Adding Plex Inc Repo to QNAP AppStore"
  setcfg $REPONAME store $REPONAME -f $REPOFILE
  setcfg $REPONAME d $REPONAME -f $REPOFILE
  setcfg $REPONAME u $APPSTORE -f $REPOFILE
  setcfg $REPONAME user '' -f $REPOFILE
  setcfg $REPONAME pw '' -f $REPOFILE
  echo "Plex Repo added, you might have to restart your QNAP for the changes to show up"
fi

# Now we need to alter the already installed version of PMS, if present, so
# it shows as been installed from our repo.
if grep -q "$PMSINTNAME1" "$QPKGCONF"; then
  echo "Plex Media Server is installed"
else
  echo "Plex Media Server is not installed, what a shame :("
fi

if [[ "$(getcfg $PMSINTNAME Name -d FALSE -f /etc/config/qpkg.conf)" != "FALSE" ]]; then
  echo "We need to update installed version of Plex Media Server"
  setcfg $PMSINTNAME store $REPONAME -f $QPKGCONF
  echo "Plex Media Server install now use our repo"
else
  echo "Already updated, so all is good"
fi
