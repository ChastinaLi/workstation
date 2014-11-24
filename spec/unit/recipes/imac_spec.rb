require 'spec_helper'

describe 'workstation::imac' do
  let(:chef_run) { ChefSpec::SoloRunner.converge(described_recipe) }

  it 'installs lunchy gem' do
    expect(chef_run).to install_chef_gem('lunchy')
  end
end
