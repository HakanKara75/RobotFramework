*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${BROWSER}    Chrome
${URL}     https://www.hepsiburada.com
${SEARCH}     //div[@class='searchBoxOld-M1esqHPyWSuRUjMCALPK']
${SEARCHPLACE}     //input[@placeholder='Ürün, kategori veya marka ara']
${SearchKeyword}     Suç ve Ceza
${SEARCHBUTTON}     //div[@class='searchBoxOld-yDJzsIfi_S5gVgoapx6f']
${EXPECTED_TITLE}     Suç ve Ceza - Hepsiburada

*** Test Cases ***
Search Product on Hepsiburada
    #Browser'i ac ve hepsiburada sitesine git
    Open Browser    ${URL}    ${BROWSER}

    #Pencereyi maximize yap
    Maximize Browser Window

    #${SEARCH} elementine tikla
    Click Element    ${SEARCH}

    #Bekle
    Sleep    2s

    #${SEARCHPLACE} elementine ${SearchKeyword} degiskenini yolla
    Input Text    ${SEARCHPLACE}    ${SearchKeyword}
    Sleep    2s

    #${SEARCHBUTTON} elementine tikla
    Click Element    ${SEARCHBUTTON}

    #Sayfanin basligi ${EXPECTED_TITLE} ile ayni mi
    Title Should Be    ${EXPECTED_TITLE}