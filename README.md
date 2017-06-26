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
