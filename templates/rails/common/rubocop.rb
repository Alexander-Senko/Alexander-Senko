commit_message << <<~TEXT
	* RuboCop
TEXT

gem_for :development, 'rubocop-rails', require: false

prepend_file '.rubocop.yml', <<~YAML
	inherit_from:
	  - https://github.com/Alexander-Senko/Alexander-Senko/raw/refs/heads/main/.rubocop.yml
	  - https://github.com/Alexander-Senko/Alexander-Senko/raw/refs/heads/main/.rubocop-rails.yml
	
	plugins:
	  - rubocop-rails

YAML

if %w[ rspec rspec-rails ].any? { gem? it }
	gem_for :development, 'rubocop-rspec', require: false
	gem_for :development, 'rubocop-rspec_rails', require: false

	insert_into_file '.rubocop.yml', <<~YAML, after: %r'^  - \S+/.rubocop.yml\n'
		\  - https://github.com/Alexander-Senko/Alexander-Senko/raw/refs/heads/main/.rubocop-rspec.yml
	YAML

	insert_into_file '.rubocop.yml', <<~YAML, after: /^  - rubocop-rails\n/
		\  - rubocop-rspec
		\  - rubocop-rspec_rails
	YAML
end

append_file '.gitignore', <<~IGNORE
	/.rubocop-*
IGNORE

comment_lines 'Gemfile',      /omakase/
comment_lines '.rubocop.yml', /omakase/
