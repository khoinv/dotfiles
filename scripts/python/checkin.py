# coding: utf-8
from selenium import webdriver
from selenium.webdriver.common.keys import Keys
from contextlib import contextmanager
from selenium.common.exceptions import TimeoutException
from selenium.webdriver.common.by import By
import selenium.webdriver.support.expected_conditions as EC
from selenium.webdriver.support.ui import WebDriverWait
from time import sleep
import shukiin

@contextmanager
def closing(thing):
    try:
        yield thing
    finally:
        thing.quit()

_username = shukiin.shukiin_user
_password = shukiin.shukiin_pass


driver = webdriver.Chrome()
driver.get('https://shukiin.com/login')

username = WebDriverWait(driver, 2).until(
    lambda driver: driver.find_element_by_id('email'))
password= WebDriverWait(driver, 2).until(
    lambda driver: driver.find_element_by_id('password'))

username.send_keys(_username)
password.send_keys(_password)
submit = WebDriverWait(driver, 2).until(
    lambda driver: driver.find_element_by_css_selector('button.uk-button.uk-button-primary')).click()
sleep(10)

driver.find_element_by_css_selector('.uk-button.uk-button-large.uk-margin-right').click()
alert = driver.switch_to_alert()
sleep(5)
# alert.accept()
sleep(15)

driver.close()
