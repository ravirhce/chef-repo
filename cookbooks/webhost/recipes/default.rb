#
# Cookbook:: webhost
# Recipe:: default
#
# Copyright:: 2019, The Authors, All Rights Reserved.
template "/var/www/html/index.html" do
  source "index.html.erb"
  variables(
	fqdn: node['fqdn'] ip: node['ipaddress'])
end 
