@echo off
for /F "tokens=3 delims=<>" %%m in ('findstr "<module>" pom.xml') do git clone https://github.com/encontra/%%m.git
