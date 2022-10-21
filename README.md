# Testrepo
Just a small test

Use: https://raw.githubusercontent.com/ukdtom/Testrepo/main/repo.xml

To update xml, use repo_template file, and in that, replace the following:

* PLEX_CACHECHK
  * Timestamp for when xml was updated, like: 202220101312
* PLEX_VERSION
  * Version of PMS, like: 1.29.0.6244
* PLEX_PUBDATE
  * Timestamp for published, like: 2022/10/19
* PLEX_ARMV7NEON
  * URL to download Arm V7 Neon, like: https://downloads.plex.tv/plex-media-server-new/1.29.0.6244-819d3678c/qnap/PlexMediaServer-1.29.0.6244-819d3678c-armv7neon.qpkg
* PLEX_X86
  * URL to download X86-64, like: https://downloads.plex.tv/plex-media-server-new/1.29.0.6244-819d3678c/qnap/PlexMediaServer-1.29.0.6244-819d3678c-x86_64.qpkg
* PLEX_ARM64
  * URL to download Arm v8, like: https://downloads.plex.tv/plex-media-server-new/1.29.0.6244-819d3678c/qnap/PlexMediaServer-1.29.0.6244-819d3678c-aarch64.qpkg

## TODO:
* We miss TS-x31 and ts-x31u (*armv7hf.qpkg builds)
* addrepo.sh needs to go into package_routines/pkg_post_install() function

