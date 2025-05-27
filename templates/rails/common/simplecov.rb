commit_message << <<~TEXT
	* SimpleCov
TEXT

gem_for :test, 'simplecov', require: false do
	if %w[ rspec rspec-rails ].any? { gem? it }
		prepend_file '.rspec', <<~CONFIG
			--require simplecov
		CONFIG
	end
end

create_file '.simplecov', <<~RUBY
	SimpleCov.module_eval do
	  profiles.load "rails"
	
	  enable_coverage :branch
	  enable_coverage :eval
	
	  skip "/spec/"
	end
RUBY

append_file 'spec/spec_helper.rb', <<~RUBY
	
	SimpleCov.start
RUBY

append_file '.gitignore', <<~IGNORE
	/coverage/
IGNORE
