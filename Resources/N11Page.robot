*** Settings ***
Library      SeleniumLibrary


*** Variables ***
${URL}     https://www.n11.com/
${Aranacak_urun}     mackbook pro 2023
${AramaYeri}     id=searchData
${AramaButonu}     class=iconsSearch
${Alert}      xpath=//div[@class='dn-slide-buttons horizontal']/button[@class='dn-slide-deny-btn']


*** Keywords ***
Open N11 Sayfasi
        Open Browser    ${URL}     chrome
        Maximize Browser Window
Arama Yap
    [Arguments]       ${Aranacak_urun}
    Clear Element Text    ${AramaYeri}
    Sleep    3s
    Input Text       ${AramaYeri}     ${Aranacak_urun}
    Sleep    3s
    Wait Until Element Is Visible    ${Alert} 
    Click Element    ${Alert} 
    Click Element    ${AramaButonu}