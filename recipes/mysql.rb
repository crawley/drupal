if platform?('debian') then
  svc_provider = Chef::Provider::Service::Init::Debian
elsif platform?('ubuntu') then
  svc_provider = Chef::Provider::Service::Upstart
else
  svc_provider = nil
end

service "mysql" do
  supports :restart => true, :start => true, :stop => true
  provider svc_provider if svc_provider
  action :nothing
end

template "/etc/mysql/conf.d/vdd_my.cnf" do
  source "vdd_my.cnf.erb"
  cookbook "vdd"
  mode "0644"
  notifies :restart, "service[mysql]", :delayed
end

