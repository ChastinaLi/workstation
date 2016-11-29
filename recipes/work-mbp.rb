include_recipe 'workstation::base'

%w(controlplane).each do |app|
  homebrew_cask app
end
