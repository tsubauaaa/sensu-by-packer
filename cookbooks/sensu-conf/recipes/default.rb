#
# Cookbook Name:: sensu-conf
# Recipe:: default
#
# Copyright 2014, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#
directory '/etc/sensu/conf.d/handlers/' do
    owner   'root'
    group   'sensu'
    mode    '0750'
    action  :create
end

directory '/etc/sensu/conf.d/mutators' do
    owner   'root'
    group   'sensu'
    mode    '0750'
    action  :create
end

directory '/etc/sensu/conf.d/checks/' do
    owner   'root'
    group   'sensu'
    mode    '0750'
    action  :create
end

directory '/etc/sensu/conf.d/checks/aws/' do
    owner   'root'
    group   'sensu'
    mode    '0750'
    action  :create
end

directory '/etc/sensu/conf.d/checks/resource/' do
    owner   'root'
    group   'sensu'
    mode    '0750'
    action  :create
end

directory '/etc/sensu/handlers/' do
    action  :delete
end

template "client.json" do
  path "/etc/sensu/conf.d/client.json"
  source "client.json.erb"
  user "root"
  group "sensu"
  mode "640"
end

template "default.json" do
  path "/etc/sensu/conf.d/handlers/default.json"
  source "default.json.erb"
  user "root"
  group "sensu"
  mode "640"
end

template "handler_graphite.json" do
  path "/etc/sensu/conf.d/handlers/handler_graphite.json"
  source "handler_graphite.json.erb"
  user "root"
  group "sensu"
  mode "640"
end

template "mailer.json" do
  path "/etc/sensu/conf.d/handlers/mailer.json"
  source "mailer.json.erb"
  user "root"
  group "sensu"
  mode "640"
end

template "mutator_graphite.json" do
  path "/etc/sensu/conf.d/mutators/mutator_graphite.json"
  source "mutator_graphite.json.erb"
  user "root"
  group "sensu"
  mode "640"
end

template "graphite.rb" do
  path "/etc/sensu/mutators/graphite.rb"
  source "graphite.rb.erb"
  user "root"
  group "sensu"
  mode "655"
end

service "sensu-server" do
     supports :status => true, :restart => true, :reload => true
     action [ :restart ]
end

service "sensu-api" do
     supports :status => true, :restart => true, :reload => true
     action [ :restart ]
end

