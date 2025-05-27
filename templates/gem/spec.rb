gemspec = "#{name}.gemspec"

github_username&.then do
	gsub_file gemspec,
			/(spec\.(homepage|metadata\["source_code_uri"\])\s*=\s*).+$/,
			%(\\1"https://github.com/#{it}/\#{spec.name}")
end

gsub_file gemspec,
		/(spec\.metadata\["changelog_uri"\]\s*=\s*).+$/,
		%(\\1"\#{spec.metadata['source_code_uri']}/blob/v\#{spec.version}/CHANGELOG.md")

if match_file gemspec, /spec\.add_dependency/
	insert_into_file gemspec, <<-RUBY, before: /^  spec\.add_dependency/
	  spec.required_ruby_version = "~> #{ruby_version}"

	RUBY
else
	insert_into_file gemspec, <<-RUBY, before: /^end/
	  spec.required_ruby_version = "~> #{ruby_version}"
	RUBY
end

comment_lines gemspec, /allowed_push_host/
