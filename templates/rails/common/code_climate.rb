commit_message << <<~TEXT
	* Code Climate (via GitHub Actions)
TEXT

# TODO

insert_into_file 'README.md', <<~MARKDOWN, after: /^# .+\n+/
	![Code Climate maintainability](
		https://img.shields.io/codeclimate/maintainability-percentage/#{github_username}/#{name}
	)
	![Code Climate coverage](
		https://img.shields.io/codeclimate/coverage/#{github_username}/#{name}
	)

MARKDOWN
