
SET subl="C:\\Users\\%USERNAME%\\AppData\\Roaming\\Sublime Text 3\\Packages\\User"
ECHO %subl%
xcopy "..\\Package Control.sublime-settings" %subl%  /Y
xcopy  "..\\Preferences.sublime-settings" %subl% /Y
PAUSE 10
