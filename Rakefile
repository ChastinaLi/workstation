require 'rake'
require 'rspec/core/rake_task'

RSpec::Core::RakeTask.new(:spec)

task default: :spec

require 'rake/clean'
CLEAN.include(%w[pkg vendor])

def cookbook_version
  metadata = File.open('metadata.rb').read
  metadata.match(/version\s+'(.*)'/)[1]
end

task package: :clean do
  sh 'berks vendor vendor/cookbooks'
  FileUtils.cp 'solo.rb', 'vendor'
  FileUtils.cp 'solo.json', 'vendor'
  version = cookbook_version
  Dir.chdir 'vendor' do
    sh "tar czf workstation-#{version}.tar.gz *"
  end
end
