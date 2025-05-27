commit_message << <<~TEXT
	* RSpec
TEXT

gem_for :test, 'rspec' do
	run 'rspec --init'

	gsub_file 'spec/spec_helper.rb', /^((# .+\n)*=(begin|end))\n/, ''
end

FileUtils.mv "#{destination_root}/test",
		         "#{destination_root}/spec"

remove_file 'spec/test_helper.rb'

Dir.glob("#{destination_root}/spec/**/*_test.rb")
		.each { remove_file it }

gsub_file 'Rakefile',   %r'\btest/', 'spec/'
gsub_file '.gitignore', %r'\btest/', 'spec/'

append_file 'Rakefile', <<~RUBY

	require "rspec/core/rake_task"
	RSpec::Core::RakeTask.new(:spec)
RUBY

append_file '.gitignore', <<~IGNORE
	/spec/examples.txt
IGNORE
