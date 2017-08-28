#
# Cookbook:: lcd_web
# Recipe:: default
#
# Copyright:: 2017, Kurt Wallander, All Rights Reserved.
#
package 'httpd' do 
  action :install 
end 

package 'net-tools' do 
  action :install 
end 

service 'httpd' do 
 action [:enable, :start]
end

include_recipe 'lcd_web::users'
