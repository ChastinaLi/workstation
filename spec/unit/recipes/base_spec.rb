require 'spec_helper'

describe 'workstation::base' do
  let(:chef_run) { ChefSpec::SoloRunner.converge(described_recipe) }

  it 'installs homebrew packages' do
    stub_command('which git').and_return('/usr/local/bin/git')
    expect(chef_run).to install_package('autojump')
  end
end
