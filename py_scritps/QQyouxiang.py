from selenium import webdriver
from selenium.webdriver.support import expected_conditions
from selenium.webdriver.support.wait import WebDriverWait
from selenium.webdriver.common.action_chains import ActionChains
from time import sleep
from selenium.webdriver.chrome.options import Options

chrome_options = Options()
chrome_options.add_argument("--headless")
wd = webdriver.Chrome(chrome_options=chrome_options)
#wd = webdriver.Chrome()
wd.implicitly_wait(5)

wd.get('https://mail.qq.com/')
#wd.maximize_window()

login_frame = wd.find_element_by_id('login_frame')
wd.switch_to.frame(login_frame)
sleep(2)


wd.find_element_by_id('switcher_plogin').click()
print(wd.find_element_by_id('u').size)
wd.find_element_by_id('u').send_keys('2113172527')
wd.find_element_by_id('p').send_keys('cc.,2015')
wd.find_element_by_id('login_button').click()
wd.find_element_by_id('readmailbtn_link').click()
wd.switch_to.frame(wd.find_element_by_id('mainFrame'))


def check():
    current_handle = wd.current_window_handle
    eles = wd.find_elements_by_css_selector('.toarea .F, .toarea .M')
    count = len(eles)

    for i in range(count):
        ele = eles[i]
        ActionChains(wd).context_click(ele).perform()
        wd.find_elements_by_css_selector('.menu_item')[1].click()
        sleep(0.35)
        handle2 = wd.window_handles[1]
        wd.switch_to.window(handle2)

        wd.switch_to.frame(wd.find_element_by_id('mainFrame'))
        try:
            subject = wd.find_element_by_id('subject').text
            mail_content = wd.find_element_by_id('mailContentContainer').text

            print (subject)
            print (mail_content)

        except:
            pass

        wd.close()
        wd.switch_to.window(current_handle)

        wd.switch_to.frame(wd.find_element_by_id('mainFrame'))

n = 1
while n <= 18:
    check()
    wd.find_element_by_id('nextpage1').click()
    n += 1

#sleep(2)
#wd.close()