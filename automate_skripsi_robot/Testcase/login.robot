*** Settings ***
# Library berfungsi sebagai kumpulan keyword untuk robot framework
Library    SeleniumLibrary
#Resource, digunakan untuk manggil folder / file
Resource    ../Step Definition/login_sd.robot

*** Test Cases ***
#Testcase, dibuat untuk verifikasi tahapan / tindakan terhadap fitur 
SC01 User melakukan Login dengan data valid    
    Given user open halaman web
    When user input email
    And user input pin    
    And user klik button login    
    Then masuk ke halaman dashboard