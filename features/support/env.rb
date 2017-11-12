require 'rspec'
require 'pry'
require 'site_prism'
require 'cucumber'
require 'selenium/webdriver'
require 'capybara/dsl'
require 'site_prism'
require 'capybara-screenshot/cucumber'
require 'rspec/expectations'

include Capybara::DSL

Capybara.register_driver :selenium do |app|
	
Capybara::Selenium::Driver.new(app, :browser => :chrome)

end

Capybara.configure do |config|
	config.current_driver = :selenium
 	config.default_max_wait_time = 70	
Capybara.page.driver.browser.manage.window.maximize

end
	
