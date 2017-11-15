Before do
	Capybara.reset_session!
end

After do |scenario|
Dir.mkdir('print') unless Dir.exist?('print')

	sufix = ('error' if scenario.failed?) || 'success'
	name = scenario.name.tr(' ', '_').downcase
	
	page.save_screenshot("print/#{sufix}-#{name}.png")
	embed("print/#{sufix}-#{name}.png", 'image/png', 'Screenshot')
	

end