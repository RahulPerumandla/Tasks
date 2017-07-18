#
# Cookbook:: LAMP
# Recipe:: default
#
# Copyright:: 2017, The Authors, All Rights Reserved.

package 'httpd' do
	package_name 'httpd'
	action :install
end

service 'httpd' do
	service_name 'httpd'
	action [:start, :enable]
end

package 'mysqld' do
	package_name 'mysqld'
	action :install
end

service 'mysqld' do
	service_name 'mysqld'
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
