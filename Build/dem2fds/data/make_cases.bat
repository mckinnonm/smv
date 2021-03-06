@echo off
set option=%1
set option2=%2

set dem2fds=..\intel_win_64\dem2fds_win_64.exe
if NOT exist %dem2fds% set dem2fds=dem2fds
::set dem2fds=dem2fds

%dem2fds% %option% %option2% -dir %userprofile%\terrain\blodget blodget.in 

%dem2fds% %option% %option2% -elevdir %userprofile%\terrain\N40W078 -dir %userprofile%\terrain\demtest demtest1.in 
%dem2fds% %option% %option2% -elevdir %userprofile%\terrain\N40W078 -dir %userprofile%\terrain\demtest demtest2.in 

%dem2fds% %option% %option2% -elevdir %userprofile%\terrain\N40W078 -dir %userprofile%\terrain\nist nist.in 

%dem2fds% %option% %option2% -elevdir %userprofile%\terrain\N40W078 -dir %userprofile%\terrain\sugarloaf sugarloaf.in 

%dem2fds% %option% %option2% -overlap -dir %userprofile%\terrain\tower tower.in 

%dem2fds% %option% %option2% -dir %userprofile%\terrain\trails trails.in 
%dem2fds% %option% %option2% -dir %userprofile%\terrain\trails trails2.in 
