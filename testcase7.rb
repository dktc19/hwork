require 'selenium-webdriver'

driver = Selenium::WebDriver.for:chrome
driver.navigate.to ' https://itmscoaching.herokuapp.com/form'

driver.manage.window.maximize

#input firstname
firstname = driver.find_element(:id,'first-name')
firstname.send_keys 'iTMS'
#input lastname
lastname = driver.find_element(:tag_name, 'input')
lastname.send_keys 'Coaching'
#input job title
job = driver.find_element(:xpath, "//input[@id='job-title']")
job.send_keys 'QA'
#choose highest level
level = driver.find_element(:id,'radio-button-2').click
#choose sex
sex = driver.find_element(:id,'checkbox-1').click
#experience dropdown list
experience = driver.find_element(:id,'select-menu')
select_object = Selenium::WebDriver::Support::Select.new(experience)
select_object.select_by(:value, '2')
#input date
date = driver.find_element(:id,'datepicker')
date.send_keys '27/10/2025'
#submit
submit = driver.find_element(:link_text, 'Submit').click
sleep 2
driver.quit