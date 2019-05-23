#
# Cookbook:: mongodb
# Recipe:: default
#
# Copyright:: 2019, The Authors, All Rights Reserved.

# Runs a mongodb instance
include_recipe "mongodb::default"
include_recipe 'apt'
# enables and starts mongodb DB service

service "mongodb" do
  action [:enable, :start]
end
