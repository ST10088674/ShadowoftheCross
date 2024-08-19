Download VS Code on your VM.

VS Code Extensions needed:
Debugger for Java
Extension Pack for Java
Java
Java Language Support
Maven for Java
Test Runner for Java

(If I missed something vs code should tell you that a extension is missing and to install it)

Download Tomcat:
Visit the Apache Tomcat download page.
Download the appropriate binary distribution:
For Windows: Download the .zip file.
Installation on Windows:

Extract the Downloaded File

Use a tool like WinRAR or 7-Zip to extract the downloaded .zip file to a directory of your choice (e.g., C:\Tomcat). You can also just use the extract button in file explorer.


Set Up Environment Variables:

Open the Control Panel and go to System and Security > System > Advanced system settings.
Click on Environment Variables.
Under System Variables, click New and add:
Variable name: CATALINA_HOME
Variable value: The path to your Tomcat directory (e.g., C:\Tomcat).
Add the bin directory of Tomcat to the Path variable:
Select the Path variable and click Edit.
Click New and add C:\Tomcat\bin.

Startup and shutdown of Tomcat( you need to start it before you can run the website). Can be done in VS Codes Terminal.
Startup: startup.bat
Shutdown: shutdown.bat

Deploying a WAR File(Needs to be done after changes have been made on the website and to get the new war file you need to type in "mvn clean package" in the terminal)

Copy the WAR File:

Place your shadow-of-the-cross.war file in the webapps directory of your Tomcat installation.
Windows: C:\Tomcat\webapps

The shadow-of-the-cross.war file is in the target folder of the website.
