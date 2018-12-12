:: set required base paths 
SET DOC_BASE=%SRC_DIR%\docs\_theme\djangodocs\static
SET DOC_EPUB_BASE=%SRC_DIR%\docs\_theme\djangodocs-epub\static

:: symbolic links in the djangodocs-epub/static folder for some reason
:: become dangling without valid target when extracting the archive, failing
:: the build during copying the files. So, in order to build, we
:: simply replace the dangling links with their actual target files ... 
del %DOC_EPUB_BASE%\docicons-behindscenes.png
copy %DOC_BASE%\docicons-behindscenes.png %DOC_EPUB_BASE%\docicons-behindscenes.png
del %DOC_EPUB_BASE%\docicons-note.png
copy %DOC_BASE%\docicons-note.png %DOC_EPUB_BASE%\docicons-note.png
del %DOC_EPUB_BASE%\docicons-philosophy.png
copy %DOC_BASE%\docicons-philosophy.png %DOC_EPUB_BASE%\docicons-philosophy.png
del %DOC_EPUB_BASE%\docicons-warning.png
copy %DOC_BASE%\docicons-warning.png %DOC_EPUB_BASE%\docicons-warning.png

:: now do the normal setup ...
"%PYTHON%" -m pip install --no-deps --ignore-installed .
