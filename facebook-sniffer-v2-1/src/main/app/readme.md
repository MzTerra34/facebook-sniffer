To run this project you will need to
- create your database.  DDL is in src/test/resources
- specify your database credentials in src/main/app/mule-app.properties
- run/debug the project

Then you can use the following URLs to invoke the processes

http://localhost:8081/processAllPages?startDate=2015-04-16&endDate=2015-04-17

http://localhost:8081/getPage?startDate=2015-04-16&endDate=2015-04-17&pageId=54876245094&pageName=Bud%20Light&pageCount=1