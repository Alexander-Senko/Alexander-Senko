append_file 'Gemfile', <<~RUBY

	# CI-specific

	case rails_version = ENV.fetch("RAILS_VERSION", :default)
	when "head"
	  gem "rails", github: "rails/rails"
	when /\\d+(\\.\\d+)?/
	  gem "rails", "~> \#{rails_version}.0"
	end
RUBY

insert_into_file 'README.md', <<~MARKDOWN, after: /^# .+\n+/
	![GitHub Actions Workflow Status](
		https://img.shields.io/github/actions/workflow/status/#{github_username}/#{name}/ci.yml
	)

MARKDOWN
