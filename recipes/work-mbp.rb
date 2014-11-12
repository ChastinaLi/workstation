include_recipe 'workstation::base'

%w(adium controlplane).each do |app|
  homebrew_cask app
end
