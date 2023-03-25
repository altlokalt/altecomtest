
# altlokaltecom
### Table of contents
- [System requirements](#system-requirements)
- [Figma design guidelines for better UI accuracy](#figma-design-guideline-for-better-accuracy)
- [Check the UI of the entire app](#app-navigations)
- [Facebook authentication configuration](#facebook-authentication-configuration)
- [Google authentication configuration](#google-authentication-configuration)
- [Application structure](#project-structure)
- [How to format your code?](#how-you-can-do-code-formatting)
- [How you can improve code readability?](#how-you-can-improve-the-readability-of-code)
- [Libraries and tools used](#libraries-and-tools-used)
- [Support](#support)

### System requirements

Dart SDK Version 2.18.0 or greater.
Flutter SDK Version 3.3.0 or greater.

### Figma design guidelines for better UI accuracy

Read our guidelines to increase the accuracy of design-to-code conversion by optimizing Figma designs.
https://docs.dhiwise.com/docs/Designguidelines/intro

### Check the UI of the entire app

Check the UI of all the app screens from a single place by setting up the 'initialRoute'  to AppNavigation in the AppRoutes.dart file.

### Facebook authentication configuration

Steps:
- Follow the steps on https://pub.dev/packages/flutter_login_facebook for Facebook login and only update app_id and client_token in your project.
- For Android:
    - Update facebook_app_id and facebook_client_token in /android/app/src/main/res/values/strings.xml  file.
- For iOS:
    - Configure Info.plist (ios/Runner/Info.plist) file and update APP_ID and CLIENT_TOKEN.

### Google authentication configuration

Steps:
- Follow the steps on https://pub.dev/packages/google_sign_in for Google sign-in.
- For iOS:
    - Download the GoogleService-Info.plist  file. Drag and drop the downloaded file into the Runner subfolder and update Info.plist  file.

### Application structure

After successful build, your application structure should look like this:

```
.
├── android                         - It contains files required to run the application on an Android platform.
├── assets                          - It contains all images and fonts of your application.
├── ios                             - It contains files required to run the application on an iOS platform.
├── lib                             - Most important folder in the application, used to write most of the Dart code..
    ├── main.dart                   - Starting point of the application
    ├── core
    │   ├── app_export.dart         - It contains commonly used file imports
    │   ├── constants               - It contains all constants classes
    │   ├── errors                  - It contains error handling classes                  
    │   ├── network                 - It contains network-related classes
    │   └── utils                   - It contains common files and utilities of the application
    ├── data
    │   ├── apiClient               - It contains API calling methods 
    │   ├── models                  - It contains request/response models 
    │   └── repository              - Network repository
    ├── localization                - It contains localization classes
    ├── presentation                - It contains widgets of the screens with their controllers and the models of the whole application.
    ├── routes                      - It contains all the routes of the application
    └── theme                       - It contains app theme and decoration classes
    └── widgets                     - It contains all custom widget classes
```

### How to format your code?

- if your code is not formatted then run following command in your terminal to format code
  ```
  dart format .
  ```

### How you can improve code readability?

Resolve the errors and warnings that are shown in the application.

### Libraries and tools used

- get - State management
  https://pub.dev/packages/get
- connectivity_plus - For status of network connectivity
  https://pub.dev/packages/connectivity_plus
- shared_preferences - Provide persistent storage for simple data
  https://pub.dev/packages/shared_preferences
- cached_network_image - For storing internet image into cache
  https://pub.dev/packages/cached_network_image

### Support https://discord.com/invite/rFMnCG5MZ7
# NodeJS,Mongoose,Express Project in MVC Architecture
if mysql database 
How to update SQL (MySQL, PostgreSQL, SQL Server) database to DhiWise through VS Code? (New update)
Copy the VS Code extension token from the platform and paste it into the access token field.
Fill all the required SQL credentials
That's it. Your SQL Database's Tables are added as Models in your application 🥳

if postgres database server port username password 

**Supported version of nodejs >= 12**,
**Supported version of mongoose >= 6**

Version of displayed code:v1.0.1
Last build version:v1.0.1
Code architecture:MVC

## Initial
npm install
npm start

# CLI Quickly generate Node APIs and models.
npm i -g @dhiwise/node-generator
dhi create-model
dhi create-api
dhi create-module
dhi create-app

# Installation Install DhiWise Node generator with the following command.
npm i -g @dhiwise/node-generator

Create Model Create a single model file in the directory.
dhi create-model

Crete API Create a single API in your specific module or platform.
dhi create-api

Create Module This module will contain controller, CRUD operations, and other features.
dhi create-module

Create Application Create boilerplate application.
dhi create-app

# ooops
ntegrate your source code to GitHub or GitLab or download the source code.
Download source code Synced with
GitHubBranch name:altlokalt/ecombackend Repo URL:https://github.com/altlokalt/ecombackend
Commit

API document
Access your API documentation  viewdocument blob:https://app.dhiwise.com/495773bf-fd7c-4dff-8647-85d6d5e662c6
or get the zip postman-collection from https://app.dhiwise.com/node/dashboard/641eaee842eacd0014b95eae or uploaded in google doc

## About 
- This is a Node application, developed using MVC pattern with Node.js, ExpressJS, and Mongoose. 
- MongoDB database is used for data storage, with object modeling provided by Mongoose.

## Initial
1. ```$ npm install```
2. ```$ npm start```
3. Credentials

	- One user with User role,
	# Default User credentials
	**username** : Caleb.Erdman69
	**password** : QpPCXqEiR8eGjOj

	- One user with Admin role,
	# Default Admin credentials
	**username** : Virgil.Jacobi19
	**password** : H97DmukSybXgJTz

## How to use generated APIs:
[Click here to visit documentation](<https://docs.dhiwise.com/docs/node/generate-apis/> "API Documentation")

## How to run with Docker ? :
- if you have docker file you can execute following command
- build the image
	```$ docker build --pull --rm -f "Dockerfile" -t <imageName>:latest "." ```
- execute the command
	```$ docker run -p 3000:3000 <imageName> ```


## Folder structure:
```
  ├── app.js       - starting point of the application
  ├── config
  │   └── db.js    - contains api database connection
  ├── constants    - contains commonly used constants 
  ├── controllers               
  │   └── platform - contains business logic
  ├── jobs         - cron jobs
  ├── models       - models of application
  ├── postman      - postman collection files
  ├── routes       - contains all the routes of application
  ├── services     - contains commonly used services
  ├── views        - templates
  └── utils        - contains utility functions    
```

## Detail Description of Files and folders

1. app.js
- entry point of application.

2. config
- passport strategy files
- database connection files

3. constants
- constants used across application.

4. controllers
- Controller files that contains Business logic
```
	├── controller
		├── platform
			└── modelNameController.js        - contains CRUD Operations
```

5. jobs
- Cron jobs

6. middleware
- Middleware files for authentication, authorization and role-access.

7. models
- Database models 

8. postman
- Postman collection of APIs (Import this JSON in Postman to run the APIs)

9. public 
- Assets used in application

10. routes
```
	├── routes
		├── platform
			├── modelNameRoutes.js   - contains CRUD operation routes
			└── index.js             - exports model Routes
		└── index.js                 - exports platform routes

```
- index.js file, exports platform routes, imported into app.js to access all the routes.

11. services
```
	├── services
		├── jobs                     - cron jobs
		└── auth.js                  - Authentication module service

```

12. utils
```
	├── utils
		├── validations              - joi validations files for every model
		├── dbService.js             - Database functions 
		├── messages.js              - Messages used in sending response 
		├── responseCode.js          - response codes 
		└── validateRequest.js       - validate request based on model schema

```

13. env files
- You can add credentials and port, database values as per your environment(Development/Production).
- If you are running test environment then test cases will run using test database,and its configuration is there inside app.js

VS Code extension Download our VS Code extension to access and sync your application code directly to your VS Code IDE.
Application token - https://app.dhiwise.com/node/dashboard/641eaee842eacd0014b95eae
eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VyIjp7ImlkIjoiNjNmNTg4ZDIyNWUyMmUwMDIzODQ5YWRiIiwiX2lkIjoiNjNmNTg4ZDIyNWUyMmUwMDIzODQ5YWRiIn0sImNvbXBhbnlJZCI6IjYzZjU4OGQyMjVlMjJlMDAyMzg0OWFkZCIsImFwcGxpY2F0aW9uSWQiOiI2NDFlYWVlODQyZWFjZDAwMTRiOTVlYWUiLCJpYXQiOjE2Nzk3MzI0NTl9.AnfuL-PtUpn6aW383ciZe3J5bxqwqCiV6nPxoL1UDYs


Deploy application Deploy your code on sandbox or production.
Deploy on production
Take your app to production and beyond with a click.
key
9add-5eae.dhi.codes

Deploy on sandbox
Test your APIs before taking it to live.
https://b95eae-kend-sandbox.dhiwise.co
key
b95eae-kend-sandbox.dhiwise.co




