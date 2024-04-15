getID=$$(docker ps -l --format {{.ID}})
export getID

all:
	# getID=$$(docker ps -l --format {{.ID}})
	# export getID
	echo $(getID)

build:
	docker build . -t day_night:latest

run:
	docker run --rm -i -e lat=$(lat) -e lng=$(lng) -t day_night:latest \
	cat /var/tmp/night-and-day/mode

server:
	docker run -dt day_night:latest bash -c "tail -f /dev/null"


connect:
	bash -c "docker exec -it $(getID) /bin/bash"
	unset $(getID)

