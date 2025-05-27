commit_message << <<~TEXT
	* Combustion
TEXT

comment = <<~TEXT.chomp
	Use only the Rails parts you need instead of a full dummy app
TEXT

group = :test unless
		is_a? Rails::Generators::PluginGenerator

gem_for group, 'combustion', comment: do
	run 'combust --force'

	create_file 'spec/internal/config/application.rb', <<~RUBY
		require "combustion"

		Combustion.initialize! :all, **{
				database_reset: false,
				load_schema:    false,
		}
	RUBY

	remove_dir 'spec/dummy'

	gsub_file 'bin/rails',  %r'/dummy/', '/internal/'
	gsub_file 'Rakefile',   %r'/dummy/', '/internal/'
	gsub_file '.gitignore', %r'/dummy/', '/internal/'

	gsub_file '.gitignore', %r'sqlite3', 'sqlite'

	create_file 'spec/Rakefile', <<~RUBY
		require_relative "config/application"

		Rails.application.load_tasks
	RUBY

	if is_a? Rails::Generators::PluginGenerator # it’s the only application we can run
		gsub_file 'spec/rails_helper.rb',
				'../config/environment', 'internal/config/application'

		for config in %w[
				database
				storage
		].map { "spec/internal/config/#{it}.yml" } do
			gsub_file   config, /test:$/, '\0 &test'
			append_file config, <<~YAML

				development:
				  <<: *test
			YAML
		end
	end
end
