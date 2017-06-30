require 'selenium-webdriver'
require 'pry'
class Testoneruby
  @driver=Selenium::WebDriver.for :firefox, {driver_path: "C:\\geckodriver.exe"}
  @driver.navigate.to "http://test.terraserver.com"
  @driver.find_element(:id,'homeSearchBox').send_keys("Pune")
  @driver.find_element(:class,'submitOptionsWrap').click
  puts '>>Going to sleep'
  # puts @driver.find_element(:class,'submitOptionsWrap').inspect
  sleep 12
  puts 'Awake from sleep'
  # puts @driver.find_element(:class,'vivid_plus_enabled').length
  @driver.find_elements(:class,'feature_image')[0].click # enhanced element click
  sleep 5
  @driver.find_element(:id,'purchaseOptionButton').click
  @driver.find_element(:id,'order_item_size_1358_x_1018px').click
  sleep 5 
  @driver.find_element(:id,'digitalBuyNow').click
  @driver.find_element(:link_text,'Checkout').click
  
  
  # automate form
  @driver.find_element(:id,'last_name').send_keys('shubham')
  @driver.find_element(:id,'first_name').send_keys('Sh')
  @driver.find_element(:id,'card_number').send_keys('4111111111111111') 
  puts '1'
  @driver.find_element(:id,'cvv').send_keys('123')
  puts '2'
  sleep 5
  @driver.find_element(:name,'user_email').send_keys('abssssc@gmail.com') 
  puts '3'
  puts '4'
  @driver.find_element(:id,'address_city').send_keys('asd')
  puts '5'
  @driver.find_element(:id,'address_postal_code').send_keys('123895')
  puts '6'
  @driver.find_element(:id,'address_address1').send_keys('123')
  puts 'ADDRESS'
  dropdown = @driver.find_element(:id,'countrySelectList')
  select_list = Selenium::WebDriver::Support::Select.new(dropdown)
  select_list.select_by(:text, 'India');
  sleep 5
  puts '7'
  @driver.find_element(:id,'address_state').send_keys('Maharashtra')
  puts '8'
 dropdown = @driver.find_element(id: 'expiry_month')
 select_list = Selenium::WebDriver::Support::Select.new(dropdown)
 select_list.select_by(:text, '06');
 puts '9'
 dropdown = @driver.find_element(id: 'expiry_year')
 select_list = Selenium::WebDriver::Support::Select.new(dropdown)
 select_list.select_by(:text, '2019')
   
  puts '10'
  @driver.find_element(:id,'term_conditions').click()
  puts '11'
  @driver.find_element(:id,'submitBtn').click()
  puts"Test pass"
  puts 'Success'
end  
 