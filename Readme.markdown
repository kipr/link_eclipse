Setting Up Eclipse
==================

* Click on Run -> External Tools -> External Tools Configurations
* Right click on Program -> New
* Set the name of your configuration to "Link Download"
* Set the Location to the provided file for your OS. (click on Browse File System... and navigate to the link\_eclipse folder)
* Set the Location to the provided link\_eclipse folder. (click on Browse File System...)
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