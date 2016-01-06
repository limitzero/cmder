:: initializes the web directory according to the Express.js layout for node.js applications
mkdir %CD%\%1
cd %CD%\%1

:: make all of the supporting directories under the specified directory for the content
mkdir public public\css public\img public\js db views views\includes routes

:: brief confirmation of what was done...
echo "working directory structure has been created"
pause