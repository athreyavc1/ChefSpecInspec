# # encoding: utf-8

# Inspec test for recipe lcd_web::default

# The Inspec reference, with examples and extensive documentation, can be
# found at http://inspec.io/docs/reference/resources/

unless os.windows?
  # This is an example test, replace with your own test.
  describe user('root'), :skip do
    it { should exist }
  end
end


packages = ['httpd', 'net-tools']
packages.each do | line | 
 describe package(line) do 
   it { should be_installed }
 end 
end 

describe service('httpd') do 
 it { should be_enabled }
 it { should be_running }
end
