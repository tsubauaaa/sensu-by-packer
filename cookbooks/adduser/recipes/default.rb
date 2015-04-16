#
# Cookbook Name:: adduser
# Recipe:: default
#
# Copyright 2014, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#
addusers = node['authorization']['adduser']['users']

addusers.each do |adduser|
  user "#{adduser}" do
    comment "Remote Login User"
    password nil
    supports :manage_home => true
    action :create
  end
end
