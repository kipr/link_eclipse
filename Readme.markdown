Introduction
====

This repository supports the automatic transfer of code from Eclipse to the Link robot controller.

There are four possible configurations supported:
* Python on Windows 7
* Java on Windows 7
* Python on OS X
* Java on OS X

You will need to customize these directions to match your environment.  Replace the fields in angle brackets with values that are specific to your system.
* <**Link IP**> - replaced with the IP address of your Link (i.e. `192.168.1.43`)
* <**Link Name**> - replace with a name or number that identifies your Link (i.e. `LegoBot`)
* <**Tools Dir**> - replace with a location available to all users (i.e. `C:\tools\link\` or `/opt/tools/link/`)

For the purposes of this document we are making the following assumptions:
* You have downloaded/extracted this repository into the Tools directory
* You have Java installed
* You have Eclipse installed
* You have Python 2.7 installed (if using Python)
* You have the Eclipse PyDev plug-in installed (if using Python)

Follow the steps below for the installation desired...

Python on Windows 7
====

**Setup Secure Shell**
* Open a terminal window [Start -> Run -> cmd]
* Change directory to the Tools directory `cd `<**Tools Dir**>
* Log into the Link `putty -ssh root@`<**Link IP**>
* Accept the security certificate by typing yes 

**Setup Eclipse**
* Start Eclipse
* Click [Run -> External Tools -> External Tools Configurations...]
* Right click [Program -> New]
* Name: `Send to Link `<**Link Name**>
* Location: <**Tools Dir**>`python_win.bat`
* Working Directory: <**Tools Dir**>
* Arguments: <**Link IP**>`   ${project_name}   ${workspace_loc}${project_path}` 
* Click [Apply]
* Click [Close]

**Setup the Project**
* Click [File -> New -> Other...]
* Wizards: `PyDev Project`
* Click [Next]
* Project name: `LegoBot`
* Click [Create 'src' folder and add it to the PYTHONPATH]
* Click [Finish]
* Click [Windows - Preferences]
* Click [PyDev - Interpreters - Python Interpreter]
* In Libraries tab, click [New Folder]
* Browse to Tools Directory
* Click [Ok]
* Click [Ok]
* (add kovan.py to Project)

**Create main.py**
* Expand [LegoBot] (in PyDev Package Explorer on left side of screen)
* Right click [src -> New -> PyDev Module]
* Package: (leave blank)
* Name: `main`
* Click [Finish]
* Click [Ok]
* (copy from Tools Directory, but how???)

**Test Download**

To Download, click the Run External Tool button on the toolbar (next to the regular run button). Make sure the source file view is active before clicking it!

Setting Up a Project
====================

* Right click on the Project -> Properties
* Click on Java Build Path
* Click on Libraries
* Click Add External JARs...
* Set it to the provided libkovan.jar in the link\_eclipse folder
