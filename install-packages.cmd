@echo off
set PYTHON_DIR=%USERPROFILE%\Downloads\python-3.10.8-amd64-portable
set PATH=%PYTHON_DIR%;%PYTHON_DIR%\Scripts


python.exe -m pip install --upgrade pip &&^
python -m pip install -r requirements.txt &&^
python -m pip uninstall numpy &&^
python -m pip install numpy==1.23.1 &&^
pause