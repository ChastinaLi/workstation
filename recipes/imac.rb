include_recipe 'workstation::base'

%w(bettertouchtool smcfancontrol).each do |app|
  homebrew_cask app
end

chef_gem 'lunchy'

cookbook_file 'fancontrol.plist' do
  path "#{Chef::Config[:file_cache_path]}/fancontrol.plist"
end
