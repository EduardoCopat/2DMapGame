require 'rake/testtask'

task default: %w[test]

Rake::TestTask.new do |testTask|
  testTask.pattern = "test/*_test.rb"
end

task :doit do
  puts "DONE"
end

#  "ocra source/ui/main.rb --output build/game.exe"
