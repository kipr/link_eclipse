Introduction
====

**This repository supports the automatic transfer of code from Eclipse to the Link robot controller.**

In the preparation of this Readme these defaults are used:  (replace as appropriate for your system)
* **192.168.1.45** - the IP address of your Link
* **DemoBot** - a name for your robot
* **C:\tools\link_eclipse\** - the location for your Tools directory
 - OS X users might use `/opt/tools/link_eclipse/`   
 - ProTip: put the Tools directory in a place available to all users

For the purposes of this Readme the following assumptions are made:
* You have downloaded & extracted this repository into C:\tools\link_eclipse\
* You have Java installed
* You have Eclipse installed
* You have Python 2.7 installed (if using Python)
* You have the Eclipse PyDev plug-in installed (if using Python)
* You know how to open a terminal or cmd window
* You know how to open a text file and copy the contents into an Eclipse editor window

Instructions are provided to install Java and Python transfer mechanisms.  You do not need to install both, but using both in the same Eclipse instance is supported.  The instructions for each are provided below and can be run without reference to each other.

Python Instructions 
====

**Setup Secure Shell**
* Open a terminal window 
* Change directory to the Tools directory `cd  \tools\link_eclipse\
* Log into the Link `putty -ssh root@192.168.1.45`
* Accept the security certificate `yes` 

**Setup Eclipse**
* Start Eclipse
* Click [Run -> External Tools -> External Tools Configurations...]
* Right click [Program -> New]
* Name: `Send Python to DemoBot`
* Location: `C:\tools\link_eclipse\python_win.bat`
* Working Directory: `C:\tools\link_eclipse\`
* Arguments: `192.168.1.45   ${project_name}   ${workspace_loc}${project_path}` 
* Click [Apply]
* Click [Close]

**Setup the Project**
* Click [File -> New -> Other...]
* Wizards: `PyDev Project`
* Click [Next]
* Project name: `DemoBot`
* Click radio button: [Create 'src' folder and add it to the PYTHONPATH]
* Click [Finish]
* Click [Windows - Preferences]
* Click [PyDev - Interpreters - Python Interpreter]
* In Libraries tab, click [New Folder]
* Browse to Tools Directory
* Click [Ok]
* Click [Ok]
* (add kovan.py to Project)

**Create main.py**
* Expand [DemoBot] (in PyDev Package Explorer on left side of screen)
* Right click [src -> New -> PyDev Module]
* Package: (leave blank)
* Name: `main`  
 - **(IMPORTANT: the python script you want to run first must be named main.py)**
* Click [Finish]
* Click [Ok]
* Open [C:\tools\link_eclipse\example.py] and copy the contents into the Eclipse window
 - ProTip: It might be easier copy this file from GitHub

**Test Download**
* With the [main.py] window open
* Click the [Run External Tool] button on the toolbar
 - it is just to the right of the normal [Run] button
* Look for a one line transfer message in the console window

Java Instructions
====================

**Setup Secure Shell**
* Open a terminal window 
* Change directory to the Tools directory `cd  \tools\link_eclipse\
* Log into the Link `putty -ssh root@192.168.1.45`
* Accept the security certificate `yes` 

**Setup Eclipse**
* Start Eclipse
* Click [Run -> External Tools -> External Tools Configurations...]
* Right click [Program -> New]
* Name: `Send Java to DemoBot`
* Location: `C:\tools\link_eclipse\java_win.bat`
* Working Directory: `C:\tools\link_eclipse\`
* Arguments: `192.168.1.45   ${project_name}   ${workspace_loc}${project_path}` 
* Click [Apply]
* Click [Close]


**This needs work!!**

**Setup the Project**
* Click [File -> New -> Other...]
* Wizards: `PyDev Project`
* Click [Next]
* Project name: `DemoBot`
* Click radio button: [Create 'src' folder and add it to the PYTHONPATH]
* Click [Finish]
* Click [Windows - Preferences]
* Click [PyDev - Interpreters - Python Interpreter]
* In Libraries tab, click [New Folder]
* Browse to Tools Directory
* Click [Ok]
* Click [Ok]
* Right click on the Project -> Properties
* Click on Java Build Path
* Click on Libraries
* Click Add External JARs...
* Set it to the provided libkovan.jar in the link\_eclipse folder

**Create main.py**
* Expand [DemoBot] (in PyDev Package Explorer on left side of screen)
* Right click [src -> New -> PyDev Module]
* Package: (leave blank)
* Name: `main`  
- **(IMPORTANT: the python script you want to run first must be named main.py)**
* Click [Finish]
* Click [Ok]
* Open [C:\tools\link_eclipse\example.py] and copy the contents into the Eclipse window
- ProTip: It might be easier copy this file from GitHub

**Test Download**
* With the [main.py] window open
* Click the [Run External Tool] button on the toolbar
- it is just to the right of the normal [Run] button
* Look for a one line transfer message in the console window
