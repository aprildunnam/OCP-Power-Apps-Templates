# Microsoft-Teams-Provisioning
This Power App and Power Automate solution enables the provisioning and governance of Microsoft Teams requests.  Employees can submit a request for a new Team via the Power App which is then routed through an approval process and provisioned via the Graph API in Power Automate.  

Installation Guide

Step 1 - Download this Repo

Step 2 - Import the List Deployment Flow

Import the "TeamsProvisioningToolListSetUp.Zip" file into Power Automate.  This Flow automatically creates all of the underlying SharePoint lists needed for the solution for you.  You should run this Flow once to create those lists.

Replace the value in the "! Enter URL of SP Site to Deploy to Here" Action with the URL of the SharePoint site you want to deploy the lists to in your tenant.


Step 3 - Import the Teams Provisioning Flow

Import the "TeamsApprovalProvisioningFlow.Zip" file into Power Automate.  This Flow handles the approval and creation of the Microsoft Teams requests.  

Anywhere in the Flow where you see an exclamation point before action name needs to be updated.  This is mostly just changing the SharePoint Site URL and List name to your site.

Step 4 - Import the Teams Request Power App

Import the "TeamsProvisioningTool.Zip" file into Power Apps.

This Power App allows end users to make requests for new Teams.

You will need to remove the "TeamsRequests" Data Connections and re-add them to point to your site.

Step 5 - Import the Teams Admin Tool Power App

Import the "TeamsProvisioningAdminTool.Zip" file into Power Apps.

This Power App is the administration tool which allows admins to configure set up governance policies for the Teams Requests.  

You will need to remove the "TeamsGovernance" and "TeamsRequests" Data Connections and re-add them to point to your site.


