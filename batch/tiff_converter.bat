:: Simple batch script to convert multi page tiff files (with .tif extension) to multi page pdf. 
:: Run the script from the directory the source *.tif files reside. 
:: The new files will be saved to the same directory. 
:: 
:: Notes:
:: Visit http://www.imagemagick.org/script/download.php and install the current windows binary release
:: Download https://www.imagemagick.org/download/binaries/ImageMagick-7.0.5-1-Q16-x64-dll.exe
:: During install, install legacy utilities (convert)
::
:: Reference: http://www.imagemagick.org/Usage/windows/#pitfalls
@ECHO OFF
ECHO ***********************************************
ECHO Beginning Conversion. This will take a while...
ECHO Note that some warnings may occur, so check the created PDF file is valid.
ECHO.
ECHO.
FOR %%a in (*.tif) DO (
  ECHO Converting %%a to PDF
  convert %%a "%%~dpna.pdf"
  ECHO.
)
ECHO Conversion complete. Press any key to close the window.
ECHO ***********************************************
ECHO.
PAUSE