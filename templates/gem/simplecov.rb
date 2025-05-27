commit_message << <<~TEXT
	* SimpleCov
TEXT

gem_for :test, 'simplecov', require: false do
	prepend_file '.rspec', <<~CONFIG if gem? 'rspec'
		--require simplecov
	CONFIG
end

create_file '.simplecov', <<~RUBY
	SimpleCov.module_eval do
	  enable_coverage :branch
	  enable_coverage :eval
	
	  skip "/spec/"
	end
RUBY

insert_into_file 'spec/spec_helper.rb', <<~RUBY, before: /\n{2}#/
	
	SimpleCov.start
RUBY

append_file '.gitignore', <<~IGNORE
	/coverage/
IGNORE
