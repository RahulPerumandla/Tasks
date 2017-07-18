#
# Cookbook:: LAMP
# Recipe:: default
#
# Copyright:: 2017, The Authors, All Rights Reserved.

package 'apache2' do
	package_name 'httpd'
	action :install
end

service 'apache2' do
	service_name 'httpd'
	action [:start, :enable]
end

package 'mysqld' do
	package_name 'mariadb'
	action :install
end

service 'mariadb' do
	service_name 'mariadb'
	action [:start, :enable]
end

package 'php' do
	package_name 'php'
	action :install
end
	
package 'php-mysql' do
	package_name 'php-mysql'
	action :install
end
