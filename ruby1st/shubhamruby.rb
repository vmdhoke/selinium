require 'selenium-webdriver'
class Shubhamruby
  def initialize
    @driver=Selenium::WebDriver.for :firefox, {driver_path: "C:\\geckodriver.exe"}
    @driver.manage.window.maximize
    @driver.navigate.to "http://www.hartleylab.com/"
  end
end
