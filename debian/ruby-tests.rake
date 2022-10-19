require 'gem2deb/rake/testtask'

Gem2Deb::Rake::TestTask.new do |t|
  t.libs = ['test']
  # Disable *_runner_test.rb as yarnpkg testing migration is blocked
  t.test_files = FileList['test/**/*_test.rb'] - FileList['test/**/*_runner_test.rb']
end
