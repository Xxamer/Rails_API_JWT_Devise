# README


# Wanna run this? 

Then you should to delete the credentials.ymc.enc file use rake secret and put that secret on a new encryption file using
``` EDITOR=nano rails credentials:edit ```
with format 
<pre> 
secret_key_base: default token here
devise:
  jwt_secret_key: Your token generated here
    </pre>


### Routes 
  POST  /sign_in for sign_in :duh (Bearer token is in the header of the request)
  POST  /users for create a new user
  DELETE /sign_out and send the auth token in header
  GET /member-data for test the jwt header

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version 3.0.0

* System dependencies 
- Postgres

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...
