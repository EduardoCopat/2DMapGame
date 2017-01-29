require 'rake/testtask'

task default: %w[test]

Rake::TestTask.new do |testTask|
  testTask.pattern = "test/*_test.rb"
end

task :make do
  sh "ocra source/ui/main.rb --output build/game.exe"
end


