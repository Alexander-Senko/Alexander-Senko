commit_message << <<~TEXT
	\  * `its`
TEXT

gem_for :test, 'rspec-its' do
	append_file '.rspec', <<~CONFIG
		--require rspec/its
	CONFIG
end
