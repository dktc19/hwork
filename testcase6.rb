require 'selenium-webdriver'

driver = Selenium::WebDriver.for:chrome
driver.get 'http://google.com'
#set size for window
driver.manage.window.maximize
#send_key
search = driver.find_element(:xpath, "//input[@name='q']")
search.send_keys "iTMS Coaching"
#get page title
puts "Page Title is #{driver.title}"
sleep 2
driver.quit