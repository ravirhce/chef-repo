#
# Cookbook:: ibmweb
# Recipe:: default
#
# Copyright:: 2019, The Authors, All Rights Reserved.
#
#
#fqdn = node['fqdn']

package ["apache2", "mysql-server-5.7"] do
          action :install
end
#service ["apache2", "mysql"] do
#service ["apache2"] do
service ["mysql"] do
          action [:enable, :restart]
end

#file "/var/www/html/index.html" do
#  content "fqdn=#{fqdn}"
#end
#
template "/var/www/html/index.html" do
  source "index.html.erb"
  variables(
	fqdn: node['fqdn'],
  	ip: node['ipaddress'] )
end 

