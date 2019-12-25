build:
	/bin/bash docker.sh
run: build
	docker run -p 8082:80 npx-server:8.17.0
bash:
	docker run -it -p 8082:80 npx-server:8.17.0 sh
clear:
	/bin/bash docker.sh clear