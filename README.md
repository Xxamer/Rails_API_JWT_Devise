# README


# Wanna run this? 

Then you have to delete the credentials file and make rake secret and put that secret on encryption using
``` EDITOR=nano rails credentials:edit ```
with format 

 secret_key_base: default token here 
devise:
 ```jwt_secret_key: Your token here ```


### Routes 
  POST  /sign_in for sign_in :duh (Bearer token is in the header of the request)
  POST  /users for create a new user
  GET /member-data for test the jwt header

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...
