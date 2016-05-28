#
# Cookbook Name:: nginx
# Recipe:: default
#
# Copyright (c) 2016 The Authors, All Rights Reserved.

include_recipe "apt"

package 'nginx' do
  action :install
end

service 'nginx' do
  action [:enable, :start]
  #action :enable
  #supports :status => true, :start => true, :stop => true, :restart => true
end

template "/usr/share/nginx/html/index.html" do
	source "nginx.erb"
	mode "0644"
end