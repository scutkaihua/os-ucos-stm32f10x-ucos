cmd.exe /C del ..\outlib\*   /F /Q
cmd.exe /C copy .\obj\gtOsStm32F4xx.lib  ..\outlib\gtOsStm32F4xx.lib
cmd.exe /C copy ..\config\RTX_Conf_CM.c  ..\outlib\
cmd.exe /C copy ..\config\RTX_lib.c       ..\outlib\
cmd.exe /C copy ..\cpu\startup_stm32f4xx.s  ..\outlib\
cmd.exe /C copy ..\util\gtOs.h  ..\outlib\
cmd.exe /C copy ..\cpu\inc\RTL.h  ..\outlib\