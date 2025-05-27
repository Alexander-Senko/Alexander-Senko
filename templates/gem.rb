$generator = self

require_relative 'utils'

def commit_message = @commit_message ||= <<~TEXT
	Framework: generated a new gem

	* Ruby #{ruby_version}+
TEXT

apply 'gem/spec.rb'

commit_message << <<~TEXT

	## Tests

TEXT

apply 'gem/rspec.rb'
apply 'gem/rspec/its.rb'
apply 'gem/rspec/method.rb'
apply 'gem/simplecov.rb'

commit_message << <<~TEXT

	## Code analysis

TEXT

apply 'gem/rubocop.rb'
apply 'gem/brakeman.rb'
apply 'gem/code_climate.rb'

apply 'gem/bundle.rb'

commit
