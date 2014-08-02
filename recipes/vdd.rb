include_recipe "apache2::default"
include_recipe "mysql::client"
include_recipe "mysql::server"
include_recipe "vdd::apache"
include_recipe "vdd::graphviz"
include_recipe "vdd::vdd_sites"
include_recipe "vdd::php"
include_recipe "vdd::uploadprogress"
include_recipe "vdd::mailcatcher"
include_recipe "vdd::phpmyadmin"
include_recipe "vdd::mysql"
include_recipe "vdd::xdebug"
include_recipe "vdd::git"
include_recipe "vdd::webgrind"
include_recipe "vdd::mc"
include_recipe "vdd::apc"
include_recipe "vdd::rsync"
include_recipe "vdd::curl"
include_recipe "vdd::composer"
include_recipe "vdd::drush"
include_recipe "vdd::vdd_help"
include_recipe "vdd::vim"
include_recipe "vdd::patchutils"
include_recipe "vdd::siege"
