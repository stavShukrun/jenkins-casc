# Jenkins CasC
A simple project to load jenkins with a user with Configuration as Code (Casc)

## Quick start
Run from your terminal ```./Run.sh```

## Setup and Run
First you need to Change the username and password in .env file.
Then run ```docker-compose up --build``` or for detached mode run ```docker-compose up -d --build```.

## Login Jenkins
Connect from your browser to http://localhost:8080.
Then enter Username and password from .env file.

## Cleaning
Run ```docker-compose down -v``` then to delete image ```docker image rm -f jenkins-casc_jenkins```