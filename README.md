# GoCD agent inside of Docker container

Install:

``git clone https://github.com/codesshaman/docker_gocd_agent.git``

In first, past your agent key inside environment variables in docker-compose.yaml!

Build:

``make build``

or

``docker-compose up -d --build``

Down:

``make down``

or

``docker-compose down``

Up:

``make``

or

``docker-compose up -d``

Create .env file with server url and agent auth key.

Howto check agent registery key on gocd server container:

``docker exec -it go-server cat /godata/config/cruise-config.xml | grep "agentAutoRegisterKey="``

Howto check agent registery key on filesystem:

``cat ~/.gocd/configs/cruise-config.xml | grep "agentAutoRegisterKey="``