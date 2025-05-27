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
	SimpleCov.start "rails" do
		enable_coverage :branch
		enable_coverage_for_eval

		add_filter "/spec/"
	end
RUBY

append_file '.gitignore', <<~IGNORE
	/coverage/
IGNORE
