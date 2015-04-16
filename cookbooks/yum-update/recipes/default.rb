#
# Cookbook Name:: yum-update
# Recipe:: default
#
# Copyright 2014, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#
case node[:platform]
when "amazon"
  yum_package "yum-fastestmirror" do
    action :install
  end
end

execute "yum-update" do
  user "root"
  command "yum -y update"
  action :run
end
