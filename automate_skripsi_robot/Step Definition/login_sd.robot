*** Settings ***
# Library berfungsi sebagai kumpulan keyword untuk robot framework
Library    SeleniumLibrary
#Resource, digunakan untuk manggil folder / file
Resource    ../Variables/variables.robot

*** Keywords ***    

user membuka halaman web    

    Open Browser    ${base_url}    ${browser}[Chrome]
    Maximize Browser Window
    Go To    ${login_url}[url_1]
    Sleep    2s
user input email
    Input Text    //input[@placeholder='Email']    superadmin@fazpass.com
    Sleep    2s
user input pin
    Input Text    //input[@placeholder='PIN']    987654
    Sleep    2s    
user klik button login 
    Click Button    //button[@type='submit']
    Sleep    2s   
masuk ke halaman dashboard
    Sleep    5s
    Element Should Be Visible    css=.text-xl
    #Capture Page Screenshot
    Close Browser

#-----------------------------------------------------------------------------#
# NOTES ;
#Setiap ganti halaman pake 'wait until'
#locator pake depannya dapet darimana xpath/css dsbnya
#klo jaringan jelek pake fungsi 'set selenium timeout'
#klo mau ada delay biar engga cepet pake fungsi 'set selenium speed'
#klo mau nandain berhasil klik label pake fungsi 'set Element Should Be Visible'