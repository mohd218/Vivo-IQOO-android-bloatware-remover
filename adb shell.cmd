@echo off
chcp 65001 >nul

cls
adb wait-for-device
adb devices

echo Do you want to uninstall Vivo Apps ?

set /p input="yes/no >_: "
if /i "%input%"=="yes" goto :startvivo


echo Do you want to uninstall Google Apps ?
set /p input="yes/no >_: "
if /i "%input%"=="yes" goto :startgoogle


exit 0

:startvivo

::Vivo IQOO 
echo Tips
adb shell pm uninstall -k --user 0 com.vivo.Tips

echo BBK account
adb shell pm uninstall -k --user 0 com.bbk.account

echo vivo office
adb shell pm uninstall -k --user 0 com.yozo.vivo.office

echo Vivo Browser 
adb shell pm uninstall -k --user 0 com.vivo.browser

echo App recommendations
adb shell pm uninstall -k --user 0 com.vivo.apprecommend

echo Clean Master 
adb shell pm uninstall -k --user 0 com.vivo.widget.cleanspeed

echo Compass
adb shell pm uninstall -k --user 0 com.vivo.Compass

echo Dynamic lockscreen service
adb shell pm uninstall -k --user 0 com.vlife.vivo.wallpaper

echo Easyshare
adb shell pm uninstall -k --user 0 com.vivo.easyshare

echo Feedback
adb shell pm uninstall -k --user 0 com.vivo.feedback

echo GameSpace
adb shell pm uninstall -k --user 0 com.vivo.game

echo Global search
adb shell pm disable-user --user 0 com.vivo.globalsearch

echo iManager
adb shell pm uninstall 0 com.vivo.imanager
adb shell pm uninstall -k --user 0 com.vivo.imanager
adb shell pm disable-user --user 0 com.vivo.imanager

echo Share
adb shell pm uninstall -k --user 0 com.vivo.share

echo IQOO.com
adb shell pm uninstall -k --user 0 com.iqoo.website

echo IQOO account
adb shell pm uninstall -k --user 0 com.bbk.account

echo IQOOCloud
adb shell pm uninstall -k --user 0 com.bbk.cloud

echo Lockscreen Poster service
adb shell pm uninstall -k --user 0 com.vivo.magazine

echo LogSystem
adb shell pm uninstall -k --user 0 com.bbk.iqoo.logsystem 

echo Manual
adb shell pm uninstall -k --user 0 com.vivo.phoneinstructions

echo Theme Resources
adb shell pm uninstall -k --user 0 com.bbk.theme.resources 

echo Themes
adb shell pm disable-user --user 0 com.bbk.theme

echo Tips
adb shell pm uninstall -k --user 0 com.vivo.Tips

echo Weather 
adb shell pm uninstall -k --user 0 com.vivo.weather 

echo Weather components
adb shell pm uninstall -k --user 0 com.vivo.widgetweather

echo Weather storage
adb shell pm disable-user --user 0 com.vivo.weather.provider

:startgoogle

echo YouTube Music
adb shell pm uninstall -k --user 0 com.google.android.apps.youtube.music

echo Android Accessibility Suite
adb shell pm uninstall -k --user 0 com.google.android.marvin.talkback

echo Facebook bloatware
adb shell pm uninstall -k --user 0 com.facebook.katana
adb shell pm uninstall -k --user 0 com.facebook.system
adb shell pm uninstall -k --user 0 com.facebook.appmanager
adb shell pm uninstall -k --user 0 com.facebook.services

echo Google Drive
 adb shell pm uninstall -k --user 0 com.google.android.apps.docs

echo Google Assistant
adb shell pm uninstall -k --user 0 com.google.android.apps.googleassistant

echo Google News
adb shell pm uninstall -k --user 0 com.google.android.apps.magazines

echo Maps
adb shell pm uninstall -k --user 0 com.google.android.apps.maps

echo Google Photos
adb shell pm uninstall -k -user 0 com.google.android.apps.photos

echo Google Podcasts
adb shell pm uninstall -k --user 0 com.google.android.apps.podcasts

echo Duo
adb shell pm uninstall -k --user 0 com.google.android.apps.tachyon

echo Gmail
adb shell pm uninstall -k --user 0 com.google.android.gm

echo Google
adb shell pm uninstall -k --user 0 com.google.android.googlequicksearchbox

echo Google Play Music
adb shell pm uninstall -k --user 0 com.google.android.music

echo Google Play Games
adb shell pm uninstall -k --user 0 com.google.android.play.games

echo Android Auto
adb shell pm uninstall -k --user 0 com.google.android.projection.gearhead

echo Google TV
adb shell pm uninstall -k --user 0 com.google.android.videos


echo ALL DONE!
echo.

adb kill-server
echo.
pause