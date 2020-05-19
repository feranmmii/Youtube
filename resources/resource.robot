*** Keywords ***
Start test
    open browser    https://www.youtube.com/    chrome
    maximize browser window
    set browser implicit wait   5

End test
    close browser

Select video
    click element   //ytd-rich-item-renderer[2]
    sleep  5

Select video from list
    click element  //ytd-video-renderer[1]//div[@id = 'dismissable']//a[@id = 'thumbnail']
    sleep  5

Select from auto play
    click element   //ytd-compact-autoplay-renderer//div[@id = 'contents']//ytd-compact-video-renderer//div//ytd-thumbnail//a


Pause video
    click element   //div[@ id ='container']//video

Search video
    [Arguments]  ${search_name}
    input text  //input[@id = 'search']     ${search_name}
    click button    //button[@id = 'search-icon-legacy']
    sleep  10

Check search field
    [Arguments]  ${text}
    Element attribute value should be   //input[@id = 'search']     value   ${text}

Like video
    click element   //div[@id = 'menu-container']//div//ytd-menu-renderer//div//ytd-toggle-button-renderer//a//yt-icon-button
    sleep   5

Login request
   element should be visible     //div[@id = 'contentWrapper']//ytd-modal-with-title-and-button-renderer