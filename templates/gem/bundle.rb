gems.each do |group, gems|
	register_gems = proc do
		gems.each do |(name, options)|
			gem name, **options
		end
	end

	if group
		gem_group *group, &register_gems
	else
		register_gems.call
	end
end

run 'bundle install'

gems
		.values
		.sum([])
		.filter_map { |(name, options, callback)| callback }
		.each(&:call)
