### UWADI KE

This is project with the incorporation of computer systems and web technologies into instruction provision, management of resources, and tracking of the achievements of both the students and the institutions.

### Installation

##### Pre-requisites

- Git
- Docker
- Docker Compose

#### Development Mode

Clone project.

`git clone https://github.com/IntelliSOFT-Consulting/uwadi-lms.git`

Checkout to branch 2.x. 

#### Using Docker

You are able to use Docker to build and deploy all the images for the entire project.

#### Build entire project

NOTE: Ensure you provide a `config.php` file for using the provided `config.example` file.

`docker-compose up -d --build`

This should bring up the following applications in your server.
By default, 

1. PhpMyAdmin - port 8184
2. Web App - port 8700 


### Quick Installation

Simply run the `start.sh` script provided.

```
chmod +x start.sh
./start.sh
```
 
