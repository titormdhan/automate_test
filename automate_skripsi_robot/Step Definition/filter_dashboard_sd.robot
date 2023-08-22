*** Settings ***
# Library berfungsi sebagai kumpulan keyword untuk robot framework
Library    SeleniumLibrary
#Resource, digunakan untuk manggil folder / file
Resource    ../Variables/variables.robot

*** Keywords ***
user sudah melakukan login lalu masuk ke menu dashboard
    Open Browser    ${base_url}    ${browser}[Chrome]
    # Set Selenium Timeout    5s
    Set Selenium Speed    0.5 seconds
    Maximize Browser Window
    Go To    ${login_url}[url_1]
    Input Text    //input[@placeholder='Email']    superadmin@fazpass.com
    Input Text    //input[@placeholder='PIN']    987654
    Click Button    //button[@type='submit']
user memilih field dropdown bulan
    Wait Until Page Contains Element    xpath://div[@class='grid grid-cols-12 gap-x-4 gap-y-2']/div[2]/select[@class='w-full border rounded-md text-base px-4 py-2 font-normal mb-4']
    Click Element    xpath://div[@class='grid grid-cols-12 gap-x-4 gap-y-2']/div[2]/select[@class='w-full border rounded-md text-base px-4 py-2 font-normal mb-4']
    Click Element    css:[value='2']
    #Select From List By Value    xpath://div[@class='grid grid-cols-12 gap-x-4 gap-y-2']/div[2]/select[@class='w-full border rounded-md text-base px-4 py-2 font-normal mb-4']    2
memilih field dropdown tahun
    Select From List By Value    xpath://div[@class='grid grid-cols-12 gap-x-4 gap-y-2']/div[3]/select[@class='w-full border rounded-md text-base px-4 py-2 font-normal mb-4']    2023
klik button search
    Click Button    //button[@type='submit']
menampilkan filter sesuai data yang diinginkan
    #Capture Page Screenshot     #untuk capture image
    Close Browser
    