commit_message << <<~TEXT
	\  * method specs
TEXT

gem_for :test, 'magic-support' do
	append_file '.rspec', <<~CONFIG
		--require rspec/method
	CONFIG
end
