$generator = self

require_relative '../utils'

def commit_message = @commit_message ||= <<~TEXT
	Framework: generated a new Rails engine

	* Ruby  #{ ruby_version}+
	* Rails #{rails_version}+
TEXT

apply 'rails/common.rb'
apply 'gem/spec.rb'
apply 'gem/changelog.rb'

append_file '.gitignore', <<~IGNORE
	/Gemfile.lock
IGNORE

commit
