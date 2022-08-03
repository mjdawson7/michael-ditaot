set DITA_DIR=C:\Repos\michael-ditaot\dita-ot-3.7\
set JAVA_HOME=C:\Program Files\Java\jre1.8.0_333\
set TEMP_DIR=C:\release notes IX\temphtml5\
set OUTPUT_DIR=C:\release_notes_IX\out\slb_rn_html5\
if exist %TEMP_DIR%\nul rd /q /s %TEMP_DIR%

Rem Delete the content of the output folder
if exist %OUTPUT_DIR%\nul del /q /s %OUTPUT_DIR%\*

call %DITA_DIR%bin\dita --input=C:\release_notes_IX\ReleaseNotes.ditamap --format=slb-html5-rn  --propertyfile=IXreleasenotes.properties --logfile=IXreleasenotes.log --verbose --debug