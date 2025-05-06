@echo off
:START
echo Creating Virtual environment
python -m venv venv
echo Activating venv
call .\venv\Scripts\activate.bat
echo Installing dependencies
pip install gradio openai pillow
goto :CHOICE

:CHOICE
echo.
echo ==================================================================
echo    Do you want to run the Gradio app with Llama4-Scout-109B-A17B?
echo ==================================================================
echo 1 - Yes
echo 0 - No

set /p whatapp=

if %whatapp%==1 (goto :RUNMODEL
) else if %whatapp%==0 (goto :QUIT 
) else (goto :INVALID)

:RUNMODEL
echo Starting Gradio application
python gr_llama4_Scout.py
goto :CHOICE

:INVALID
echo [44m [1m [93m
echo INVALID CHOICE
echo [0m
goto :CHOICE

:QUIT
echo [91mBYE BYE
echo [0m
pause
exit





PAUSE