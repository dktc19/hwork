require 'selenium-webdriver'
#require 'webdrivers'
driver = Selenium::WebDriver.for :chrome
driver.get 'http://google.com'
#set size for window
driver.manage.window.maximize

puts "Page source is #{driver.page_source}"

sleep 2
driver.quit