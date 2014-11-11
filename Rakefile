require 'rake'

task :default => :package

task :package do
  sh 'berks vendor vendor/cookbooks'
  FileUtils.cp 'solo.rb', 'vendor'
  FileUtils.cp 'solo.json', 'vendor'
  Dir.chdir 'vendor' do
    sh "tar czf workstation-0.1.0.tar.gz *"
  end
end
