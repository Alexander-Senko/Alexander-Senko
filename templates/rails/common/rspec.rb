apply 'gem/rspec.rb'

gem_for :test, 'rspec-rails' do
	generate 'rspec:install'

	gsub_file '.rspec', 'spec_helper', 'rails_helper'
end

gsub_file 'bin/rails',  %r'\btest/', 'spec/'

gsub_file '.github/workflows/ci.yml', %r'^(\s*)run: (bin/rails .*)\btest\n', <<~YAML.gsub(/^/, '\\\1')
	run: |
	  \\2
	  bundle exec rspec
YAML
