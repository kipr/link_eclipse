Setting Up Eclipse
==================

* Click on Run -> External Tools -> External Tools Configurations
* Right click on Program -> New
* Set the name of your configuration to "Link Download"
* Set the Location to the provided file for your OS. (click on Browse File System...)
* Set the arguments to: `10.0.170.13 ${project_name} ${workspace_loc}${project_path}` (where 10.0.170.13 is the IP address of your Link)
* Click Apply

To Download, click the Run External Tool button on the toolbar (next to the regular run button)

Setting Up a Project
====================

* Right click on the Project -> Properties
* Click on Java Build Path
* Click on Libraries
* Click Add External JARs...
* Set it to the provided libkovan.jar