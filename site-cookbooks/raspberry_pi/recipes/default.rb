#
# Cookbook Name:: raspberry_pi
# Recipe:: default
#
# Copyright 2014, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

cookbook_file "WebIOPi-0.7.0.tar.gz" do
	path "/tmp/WebIOPi-0.7.0.tar.gz"
#	source ""
	mode "0644"
	owner 'root'
	group 'root'
	action :create_if_missing
#	not_if {File.exist?}
	notifies :run, "script[install_WebIOPi]", :immediately
	notifies :create, "template[webiopi_config]", :immediately
	notifies :run, "script[start_WebIOPi]", :immediately
end

script "install_WebIOPi" do
  action :nothing
  interpreter "bash"
  user        "root"
  code <<-EOL
    tar zxvf /tmp/WebIOPi-0.7.0.tar.gz
    cd WebIOPi-0.7.0
    ./setup.sh
  EOL
end

template "webiopi_config" do
	action :nothing
	source "WebIOPi/config.erb"
	path "/etc/webiopi/config"
	mode "0644"
	owner 'root'
	group 'root'
	mode '0644'
end

script "start_WebIOPi" do
  action :nothing
  interpreter "bash"
  user        "root"
  code <<-EOL
    update-rc.d webiopi defaults
    sudo /etc/init.d/webiopi start
  EOL
end
