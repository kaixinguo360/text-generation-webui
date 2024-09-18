@echo off

call ".\venv\Scripts\activate.bat"

: set default_cmd=python server.py --listen --listen-host 0.0.0.0 --trust-remote-code --model TheBloke_zephyr-7B-beta-GPTQ
set default_cmd=python server.py --listen --listen-host 0.0.0.0 --trust-remote-code --api --api-port 7861
set http_proxy=http://127.0.0.1:8091
set https_proxy=http://127.0.0.1:8091
set no_proxy=localhost,127.0.0.1
set OPENEDAI_DEBUG=1

if "%*" == "" (
    set cmd=%default_cmd%
) else (
    set cmd=%*
)

echo + %cmd%
%cmd%

