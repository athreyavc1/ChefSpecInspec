#
# Cookbook:: lcd_web
# Recipe:: users
#
# Copyright:: 2017, Kurt Wallander, All Rights Reserved.
#
group 'developers' do 
  action :create 
end

user 'webadmin' do 
  action :create 
  manage_home true 
  gid 'developers'
  home '/home/webadmin'
end
