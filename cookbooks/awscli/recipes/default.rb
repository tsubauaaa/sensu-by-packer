#
# Cookbook Name:: awscli
# Recipe:: default
#
# Copyright 2014, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#
include_recipe "python::pip"

python_pip "awscli" do
  action :install
end

