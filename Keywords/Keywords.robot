*** Settings ***
#N11 sayfasini import edecegim
Resource      ../Resources/N11Page.robot

*** Keywords ***
N11 Sayfasini Ac
        Open N11 Sayfasi

Arama Yap
        [Arguments]       ${Aranacak_urun}
        N11Page.Arama Yap      ${Aranacak_urun}