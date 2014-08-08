directory "/var/www" do
  owner "vagrant"
  group "vagrant"
end

file "/var/www/index.html" do
  action :delete
end

link "/home/vagrant/sites" do
  to "/var/www"
end

# Add vagrant to www-data group
group "www-data" do
  action :modify
  members "vagrant"
  append true
end

web_app "localhost" do
  template "localhost.conf.erb"
  cookbook "vdd"
end

node.default["apache"]["user"] = "vagrant"
node.default["apache"]["group"] = "vagrant"

modules = [
  "cgi",
  "negotiation",
  "autoindex",
  "reqtimeout",
  "env",
  "setenvif",
  "auth_basic",
  "authn_file",
#  "authz_default",
  "authz_groupfile",
  "authz_user"
]

modules.each do |mod|
  bash "disable_apache_module_#{mod}" do
    user "root"
    code <<-EOH
    a2dismod #{mod}
    EOH
    not_if { File.exists?("/etc/apache2/mods-enabled/#{mod}") }
  end
end

directory "/etc/apache2/conf.d" do
  action :create
end

template "/etc/apache2/conf.d/vdd_apache.conf" do
  source "vdd_apache.conf.erb"
  mode "0644"
  cookbook "vdd"
  notifies :restart, "service[apache2]", :delayed
end
