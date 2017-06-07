# README

Simple Rails 5.0 App that takes in a twitter handle and returns the last 25 tweets. 

Authenticatation Layer

gem devise
[https://github.com/plataformatec/devise](https://github.com/plataformatec/devise)

Database for Devise 

Postgres 


Interaction with Twitter

gem twitter 

[https://github.com/sferik/twitter](https://github.com/sferik/twitter)


Deployed to Heroku



Caching

Used Rails built in Low-Level Caching to cache requests of the same twitter handle for 5 mins. 



Local Environment Setup

Install Necesities to Run Rails 5.0 Application

Install Postgres locally 

Add role for application with command from the postgres user
	
	create role twitterapp with createdb login password 'password1';



Creat Databases 
	
	rake db:setup

Start Server
	
	rails s 
