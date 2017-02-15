#
# Cookbook Name:: jenkins
# Recipe:: default
#
# Copyright 2017, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
package 'jenkins' do 
action :install
end

service 'jenkins' do
action [ :enable , :start ]
end
#
