*** Settings ***
# Library berfungsi sebagai kumpulan keyword untuk robot framework
Library    SeleniumLibrary
#Resource, digunakan untuk manggil folder / file
Resource    ../Step Definition/filter_dashboard_sd.robot

*** Test Cases ***
SC02 User melihat dan melakukan filter pada dashboard
    Given user sudah melakukan login lalu masuk ke menu dashboard
    When user memilih field dropdown bulan
    And memilih field dropdown tahun
    And klik button search
    Then menampilkan filter sesuai data yang diinginkan
