@echo off
set PYTHON_DIR=%USERPROFILE%\Downloads\python-3.10.8-amd64-portable

set PATH=^
%PYTHON_DIR%;^
%PYTHON_DIR%\Scripts;^
%USERPROFILE%\Downloads\PortableGit\bin;

echo %PATH% &&^
cd CQ-editor &&^
python.exe -m pip install --upgrade pip &&^
python -m pip install . &&^
python -m pip uninstall numpy &&^
python -m pip install numpy==1.23.1 &&^
python run.py &&^
pause
