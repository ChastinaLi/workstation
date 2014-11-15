require 'spec_helper'

describe 'workstation::base' do
  let(:chef_run) { ChefSpec::SoloRunner.converge(described_recipe) }

  it 'installs homebrew packages' do
    stub_command('which git').and_return('/usr/local/bin/git')
    chef_run.node.homebrew.formulas.each do |package|
      expect(chef_run).to install_package(package)
    end
  end

  it 'installs homebrew cask packages' do
    stub_command('which git').and_return('/usr/local/bin/git')
    chef_run.node.homebrew.casks.each do |package|
      expect(chef_run).to install_cask(package)
    end
  end
end
