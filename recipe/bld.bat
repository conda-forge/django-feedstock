SET STATIC_TEST_FOLDER=%SRC_DIR%\tests\staticfiles_tests\apps\test\static\test\
powershell -Command "rm $('%STATIC_TEST_FOLDER%'+[Char]0xE2+[Char]0x8A+[Char]0x97+'.txt')"

"%PYTHON%" -m pip install --no-deps --ignore-installed .
