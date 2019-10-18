# GuidDataDB
The database deployment project for [GuidData Web API](https://github.com/jhcr/crud-api-example)

## Getting Started
### Prerequisites
* .Net Framework 4.7.2
* Sql server or sql server express

### Publishing to db server
1) Open the project in visual studio

2) Right click "guidDataDatabase" project, click "Publish"

3) Click "Load Profile" and select GuidDataDatabase.publish.xml in the project folder

4) Click "Publish"

**Following db items should be published**

Table:
```
GuidData
```
Stored Procedure:
```
GetGuidDataByGuid
CreateGuidData
UpdateGuidData
DeleteGuidData
```
To
```
Data Source=(localdb)\\MSSQLLocalDB;Initial Catalog=GuidDataDatabase
```
