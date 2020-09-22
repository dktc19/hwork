require 'selenium-webdriver'
#require 'webdrivers'
driver = Selenium::WebDriver.for :chrome
driver.get 'http://google.com'
#set size for window
driver.manage.window.maximize

puts "Current URL is #{driver.current_url}"

sleep 2
driver.quit