require 'selenium-webdriver'

driver = Selenium::WebDriver.for:chrome
driver.get 'http://google.com'
#set size for window
driver.manage.window.maximize
#send_key
search = driver.find_element(:xpath, "//input[@name='q']")
search.send_key "iTMS Coaching"
# giả lập thao tác nhấn enter để trang web tìm kiếm "iTMS Coaching", sau đó mới get được title của trang web khi đã tìm kiếm với gg
search.send_keys :enter
#get page title
puts "Page Title is #{driver.title}"
sleep 2
driver.quit
