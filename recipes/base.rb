node['workstation']['formulas'].each do |formula|
  package formula
end

include_recipe 'homebrew::install_casks'
