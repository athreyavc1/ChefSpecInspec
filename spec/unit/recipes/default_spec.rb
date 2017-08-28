#
# Cookbook:: lcd_web
# Spec:: default
#
# Copyright:: 2017, Kurt Wallander, All Rights Reserved.

require 'spec_helper'

describe 'lcd_web::default' do
  context 'When all attributes are default, on an Ubuntu 16.04' do
    let(:chef_run) do
      # for a complete list of available platforms and versions see:
      # https://github.com/customink/fauxhai/blob/master/PLATFORMS.md
      runner = ChefSpec::ServerRunner.new(platform: 'ubuntu', version: '16.04')
      runner.converge(described_recipe)
    end

    it 'converges successfully' do
      expect { chef_run }.to_not raise_error
    end
    packages = ['net-tools', 'httpd']
    packages.each do | line | 
      it "installs #{line} package" do 
        expect(chef_run).to install_package(line)
      end
    end 
    it 'starts and enables service' do 
      expect(chef_run).to enable_service('httpd')
      expect(chef_run).to start_service('httpd')
    end
  end
end
