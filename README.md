AlfrescoUserUploadDashlet
=========================

Alfresco Dashlet to make it easy to upload spreadsheets of new users

It provides a way to trigger the upload of a spreadsheet, as well as
giving you the option to download the template file in a variety of
different formats (such as Excel .xls, and CSV)

Building
========
This has been tested against Alfresco Enterprise 4.0.2, and Alfresco
Enterprise 4.1.0. It ought to work fine on Community 4.x too

To build, simply run "ant", and the Share AMPs will be produced in
the /build/dist/ directory. Install it to the Share war as normal.

Installation
============
Once you have built the AMPs, install it in the Share WAR using the MMT
tool, and restart Tomcat. You'll do something like

   java -jar alfresco-mmt.jar install UserUploadDashlet.amp share.war

The import is handled by a user dashlet. On the your own Dashboard, 
Customise the Dashboard and add the **User Spreadsheet Upload**

License
=======
The code is available under the LGPL v3 License, which is the same license
that Alfresco itself is made available under.
