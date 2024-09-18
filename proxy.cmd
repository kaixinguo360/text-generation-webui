@echo off

call ".\venv\Scripts\activate.bat"

set default_cmd=python server.py --listen --listen-host 0.0.0.0 --trust-remote-code
set http_proxy=http://127.0.0.1:8091
set https_proxy=http://127.0.0.1:8091

if "%*" == "" (
    set cmd=%default_cmd%
) else (
    set cmd=%*
)

echo + %cmd%
%cmd%

