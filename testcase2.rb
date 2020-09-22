require 'selenium-webdriver'
#require 'webdrivers'
driver = Selenium::WebDriver.for :chrome
driver.get 'http://google.com'
#set size for window
driver.manage.window.maximize

sleep 2
driver.quit