require 'spec_helper'

describe 'workstation::imac' do
  let(:chef_run) { ChefSpec::SoloRunner.converge(described_recipe) }

  it 'installs lunchy gem' do
    expect(chef_run).to install_chef_gem('lunchy')
  end

  it 'creates plist file in chef tmp' do
    expect(chef_run).to render_file(
      "#{Chef::Config[:file_cache_path]}/fancontrol.plist").with_content(
        /smc -k F1Mx -w 1000/)
  end

  it 'should install fancontrol' do
    expect(chef_run).to run_bash(
      "$HOME/.chefdk/gem/ruby/2.1.0/bin/lunchy install " \
      "#{Chef::Config[:file_cache_path]}/fancontrol.plist")
  end
end
