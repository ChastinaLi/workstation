include_recipe 'workstation::base'

%w(bettertouchtool smcfancontrol).each do |app|
  homebrew_cask app
end

chef_gem 'lunchy'
