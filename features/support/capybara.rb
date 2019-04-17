
require 'capybara/cucumber'
Capybara.default_driver = :selenium
Capybara.default_driver = :selenium_chrome
require 'capybara/poltergeist'
Capybara.javascript_driver = :poltergeist

