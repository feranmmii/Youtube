*** Settings ***
Documentation    Suite description
Library  SeleniumLibrary
Resource  ../resources/resource.robot

Suite Setup  Start test
Suite Teardown  End test


*** Test Cases ***
TC01_watch_video
    Select video
    Pause video

TC02_search_video
    Search video    Psalm 1
    Select video from list

TC03_check_search_bar
    Check search field  Psalm 1

TC04_select_from_autoplay_list
    Select from auto play
    sleep  30

TC05_like_video_while_logged_out
    Like video
    Login request
