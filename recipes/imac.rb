include_recipe 'workstation::base'

%w(bettertouchtool smcfancontrol).each do |app|
  homebrew_cask app
end

chef_gem 'lunchy'

cookbook_file 'fancontrol.plist' do
  path "#{Chef::Config[:file_cache_path]}/fancontrol.plist"
end

bash 'install fancontrol' do
  command "$HOME/.chefdk/gem/ruby/2.1.0/bin/lunchy install " \
    "#{Chef::Config[:file_cache_path]}/fancontrol.plist"
end

bash 'start fancontrol' do
  command '$HOME/.chefdk/gem/ruby/2.1.0/bin/lunchy start -w fancontrol'
end
