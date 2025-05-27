def $generator.source_paths = [
		__dir__,
		super,
]

def ruby_version = RUBY_VERSION
		.sub /\.\d+$/, RUBY_PATCHLEVEL == -1 ? '\0dev' : ''

require 'bundler'

def github_username = Bundler.settings['gem.github_username']
		.presence

def gem_for group, name, **options, &callback
	gems[group] << [
			name,
			options,
			callback.tap do
				$generator.after_bundle &it if
						$generator.respond_to? :after_bundle
			end
	]
end

def gems = @gems ||= Hash.new { |hash, key| hash[key] = [] }

def gem? name
	gems[:test]
			.map { |(name, options)| name }
			.include? name
end

def commit
	run 'bin/rubocop -A'

	git add: '.'
	git commit: "-m '#{commit_message}'"
end
