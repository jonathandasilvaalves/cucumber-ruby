require "capybara"
require "capybara/cucumber"
require "capybara/rspec"
require "selenium-webdriver"
require "site_prism"
require "rspec"
require "rspec/expectations"
include RSpec::Matchers

Capybara.configure do |config|
    config.default_driver = :selenium_chrome
    config.app_host = 'https://www.saucedemo.com/'
    config.default_max_wait_time = 5
end