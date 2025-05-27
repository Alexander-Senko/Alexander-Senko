$generator = self

require_relative '../utils'

def commit_message = @commit_message ||= <<~TEXT
	Framework: generated a new Rails application'

	* Ruby  #{ ruby_version}+
	* Rails #{rails_version}+
TEXT

apply 'rails/common.rb'

gsub_file 'Gemfile', /^(ruby\s+).+$/, %(\\1"~> #{ruby_version}")

commit
