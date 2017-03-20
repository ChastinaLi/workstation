include_recipe 'workstation::base'

%w(controlplane).each do |app|
  homebrew_cask app
end

execute 'git_configs' do
  command 'git config --global core.editor "/usr/bin/vim"'
end

remote_file '~/.vimrc' do
  source 'https://raw.githubusercontent.com/amix/vimrc/master/vimrcs/basic.vim'
end
