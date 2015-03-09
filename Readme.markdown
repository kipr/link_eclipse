Preparation
===========

* Download this Link project's ZIP
* Create a `link` directory for these tools
  - Don't place within a specific user's workspace
  - Win7: consider `C:\tools\link`
  - OS X: consider: `/opt/tools/link` 
* Extract the Link project into the `link` directory
* Open a terminal window
  - Win7: Start -> Run -> cmd
  - OS X: Open the Terminal
* Change directory to the `link` directory
  - Win7: `cd \tools\link`
  - OS X: `cd /opt/tools/link`
 * Log into the Link (where 10.0.170.13 is your Link's IP address)
  - Win7: Type `putty -ssh root@10.0.170.13` 
  - OS X: Type `ssh root@10.0.170.13` 
* Accept the security certificate by pressing or typing yes (depending on OS)
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
