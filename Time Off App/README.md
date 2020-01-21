# Microsoft

Time Off Power App Template

To install the underlying lists do the following:

1. Download the timeOffPowerAppLists.xml file and the deployPowerAppsLists.ps1 file and save
2. Open the deployPowerAppsLists.ps1 file in PowerShell and fill out the prompts
3. The PowerShell will add all necessary lists

To Install the Power App follow these steps:

1. Go to make.powerapps.com
2. Click the Apps tab on the left hand side
3. Select "Import Canvas App" in the top ribbon
4. Click Upload and browse to the Time Off Template Zip file.  Click Open
5. When the app is finished uploading, select the Import Button
6. You'll get a message that the app was imported.  Click on the Apps tab on the left, locate the new app and click the ... next to it then select Edit
7. Click on the Data Sources tab in Power Apps
8. Click the ... next to each of the following data sources and select Remove : Time Off Types, Time Off Requests, Time Off Balances, TimeOffApprovers
9.  In the data tab, go in and add connections to the lists that were imported in your environment.  Just point to the URL where the lists where added and select all of the them to add them to your app:  Time Off Types, Time Off Requests, Time Off Balances, TimeOffApprovers
10.  Click File - Save - Publish.  The app will be ready to use