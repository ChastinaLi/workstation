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
end
