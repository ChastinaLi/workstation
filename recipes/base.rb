execute 'install_homebrew' do
  not_if 'type brew > /dev/null'

  command '/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"'
  user node['workstation']['user']
end

node['workstation']['formulas'].each do |formula|
  package formula
end

include_recipe 'homebrew::install_casks'

include_recipe 'dotfiles'
