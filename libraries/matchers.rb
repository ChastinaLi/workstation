if defined?(ChefSpec)
  def install_cask(package)
    ChefSpec::Matchers::ResourceMatcher.new(:homebrew_cask, :install, package)
  end
end
