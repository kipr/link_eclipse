Introduction
====

This repository supports the automatic transfer of code from Eclipse to the Link robot controller.

There are four possible configurations supported:
* Python on Windows 7
* Java on Windows 7
* Python on OS X
* Java on OS X

For the purposes of this document we are making the following assumptions:
* Your Link's IP address is `192.168.1.13` (replace with your actual IP address)
* Your Link's ID is `13` (replace with the last octet of your IP address or `JOE` or whatever)
* Your Tools directory is `C:\tools\link\` or `/opt/tools/link` (change as desired to someplace available to all users)
* You have downloaded/extracted this repository into the Tools directory
* You have Java installed
* You have Eclipse installed
* You have Python 2.7 installed (if using Python)

Follow the steps below for the installation desired...

Python on Windows 7
====

* Open a terminal window (Start -> Run -> cmd)
* Change directory to the `link` directory (`cd C:\tools\link`)
* Log into the Link (`putty -ssh root@10.0.170.13`) 
* Accept the security certificate by typing yes 
* Log into each Link you plan to use

Setting Up Eclipse
==================

* Click on Run -> External Tools -> External Tools Configurations...
* Right click on Program -> New
* Set the Name: `Send to Link XX` (where `XX` is the number or name of your Link)
* Set the Location: `C:\tools\link\python_win.bat`
* Set the Working Directory to the provided link\_eclipse folder. (click on Browse File System...)
* Set the arguments to: `10.0.170.13 ${project_name} ${workspace_loc}${project_path}` (where 10.0.170.13 is the IP address of your Link)
* Click Apply
* Must be done per-link:
  - Windows: Open the command line (Start -> Run -> cmd)
  - OS X: Open the Terminal
  - Windows: Navigate to the link\_eclipse folder (for example, `cd Downloads\link\_eclipse`)
  - Windows: Type `putty -ssh root@10.0.170.13` (where 10.0.170.13 is your Link's IP address)
  - OS X: Type `ssh root@10.0.170.13` (where 10.0.170.13 is your Link's IP address)
  - You must accept the security certificate by pressing or typing yes (depending on OS)

To Download, click the Run External Tool button on the toolbar (next to the regular run button). Make sure the source file view is active before clicking it!

Setting Up a Project
====================

* Right click on the Project -> Properties
* Click on Java Build Path
* Click on Libraries
* Click Add External JARs...
* Set it to the provided libkovan.jar in the link\_eclipse folder
