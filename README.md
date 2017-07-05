# Monitor Frontend

This project was generated with [Angular CLI](https://github.com/angular/angular-cli) version 1.1.3.

## NodeJS and NPM Install on Ubuntu

curl -sL https://deb.nodesource.com/setup_8.x | sudo -E bash -

sudo apt install nodejs

sudo npm install -g @angular/cli

## Development server

Run `ng serve` for a dev server. Navigate to `http://localhost:4200/`. The app will automatically reload if you change any of the source files.

## Code scaffolding

Run `ng generate component component-name` to generate a new component. You can also use `ng generate directive|pipe|service|class|module`.

## Build

Run `ng build` to build the project. The build artifacts will be stored in the `dist/` directory. Use the `-prod` flag for a production build.

## Running unit tests

Run `ng test` to execute the unit tests via [Karma](https://karma-runner.github.io).

## Running end-to-end tests

Run `ng e2e` to execute the end-to-end tests via [Protractor](http://www.protractortest.org/).
Before running the tests make sure you are serving the app via `ng serve`.

## Docker Build

Run ./build.sh   

This will build the docker image polinchw/monitor-frontend.

## Docker Run

Run docker-compose up -d

This will start a docker container on port 8000:80 (Docker external:internal format)


## Docker Machine/Swarm Deployment on AWS

1. Create a Docker Machine (hopefully you an reuse one in your infrastructure).
2. Git clone this repo on your Docker Machine: https://github.com/polinchw/docker-tools
3. chmod u+x docker-tools/docker-machine/docker-swarm/aws/bash-scripts/create-swarm-instances.sh 
4. Create a Docker Swarm under the 'control' of the Docker Machine to run the monitor-frontend on.  This will install the Docker Swarm on your selected AWS VPC and subnet.
    
  ./docker-tools/docker-machine/docker-swarm/aws/bash-scripts/create-swarm-instances.sh AKIAJB7DZD4I6QA2XBRA <AWS-SECRET-KEY> vpc-9dc174e4 subnet-5501b679 polinchw monitor-frontend 1 ami-8887be9e WebServerSecurityGroup
