def rails_version = Rails::VERSION
		.then { [ it::MAJOR, it::MINOR ] * '.' }

Dir.chdir destination_root # HACK

commit_message << <<~TEXT

	## Tests

TEXT

apply 'rails/common/rspec.rb'
apply 'rails/common/rspec/its.rb'
apply 'rails/common/rspec/method.rb'
apply 'rails/common/simplecov.rb'
apply 'rails/common/combustion.rb'

commit_message << <<~TEXT

	## Code analysis

TEXT

apply 'rails/common/rubocop.rb'
apply 'rails/common/brakeman.rb'
apply 'rails/common/code_climate.rb'

apply 'gem/bundle.rb'

apply 'rails/common/ci.rb'
