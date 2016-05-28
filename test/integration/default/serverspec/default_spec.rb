require 'spec_helper'

# Serverspec examples can be found at
# http://serverspec.org/resource_types.html

nginx_port = 80

describe 'nginx' do
  
  describe package('nginx') do
  	it { should be_installed}
  end

  describe service('nginx') do
  	it { should be_running}
  end

  describe service('nginx') do
  	it { should be_enabled}
  end

  describe port(nginx_port) do
    it { should be_listening}
  end
end
