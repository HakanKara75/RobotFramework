*** Settings ***
Library    SeleniumLibrary
Resource    ../Keywords/Keywords.robot

*** Test Cases ***
N11 Arama Testi
    [Setup]         N11 Sayfasini Ac
    Keywords.Arama Yap    ${Aranacak_urun}
    [Teardown]      Close Browser