SET PATH_TO_FILE=%SRC_DIR%\tests\staticfiles_tests\apps\test\static\test\⊗.txt
del %PATH_TO_FILE%

"%PYTHON%" -m pip install --no-deps --ignore-installed .
