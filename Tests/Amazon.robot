*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${BROWSER}   Chrome
${URL}   https://www.amazon.com.tr
${SEARCH_TEXT}   Karakalem
${PRODUCT_CLASS}    //span[@class='a-color-state a-text-bold']

*** Test Cases ***
Aranacak Urun
    #Tarayici penceresini ac ve amazon sitesine git
    Open Browser  ${URL}  ${BROWSER}

    #Pencereyi tam ekran yap
    Maximize Browser Window

    #Arama cubuguna ${SEARCH_TEXT} degerini gir
    Input Text    id=twotabsearchtextbox    ${SEARCH_TEXT}

    #Arama butonuna bas
    Click Button    id=nav-search-submit-button

    #Acilan sayfada ${PRODUCT_CLASS} elementinin textini al ve ${product_text} degiskenine ata
    ${product_text}  Get Text    xpath= ${PRODUCT_CLASS}

    #${product_text} degiskeninin degerini "Karakalem" ile ayni olup olmadigini dogrula
    Should Be Equal As Strings    ${product_text}  "Karakalem"

    #Browser'i kapat
    Close Browser