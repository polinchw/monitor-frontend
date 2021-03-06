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

1. Create a <b>Docker Machine</b> (hopefully you an reuse one in your infrastructure).
2. Git clone this repo on your Docker Machine: https://github.com/polinchw/docker-tools
3. chmod u+x docker-tools/docker-machine/docker-swarm/aws/bash-scripts/create-swarm-instances.sh 
4. Create a <b>Docker Swarm</b> under the <u>control</u> of the <b>Docker Machine</b> to run the monitor-frontend on.  This will install the Docker Swarm on your selected AWS VPC and subnet.
    
  ./docker-tools/docker-machine/docker-swarm/aws/bash-scripts/create-swarm-instances.sh AKIAJB7DZD4I6QA2XBRA xxxx vpc-9dc174e4 subnet-5501b679 polinchw monitor-frontend 1 ami-8887be9e WebServerSecurityGroup
  
5. Create a <b>Docker Service</b>.  Run the monitor-frontend app in the Docker Swarm as a Docker Service by running this command <b>on</b> the Docker Machine.

  docker-machine ssh monitor-frontend-swarm-master 'sudo docker service create --replicas 2 --name monitor-frontend -p 80:80 polinchw/monitor-frontend'

6. You probably want to add a AWS load balancer to load balance the monitor-frontend at this point. 

## Update a running Docker Service from Docker Machine

1. docker-machine ssh monitor-frontend-swarm-master docker service update --image polinchw/monitor-frontend:latest monitor-frontend

## Update a running Docker Service from a Docker Swarm Master

1. docker-machine ssh monitor-frontend-swarm-master    (this logs you on to the remote running node)
2. docker service update --image polinchw/monitor-frontend:latest monitor-frontend
