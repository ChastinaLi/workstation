user = node['workstation']['user']
execute 'install_homebrew' do
  not_if 'type brew > /dev/null'

  command '/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"'
  user user
end

node['workstation']['formulas'].each do |formula|
  package formula
end

include_recipe 'homebrew::install_casks'

execute 'install_oh_my_zsh' do
  not_if { File.exist?("/Users/#{user}/.oh-my-zsh") }

  command 'sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"'
  user user
end

include_recipe 'dotfiles'
