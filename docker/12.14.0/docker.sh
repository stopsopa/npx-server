
THISFILE=${BASH_SOURCE[0]}
DIR="$( cd "$( dirname "${THISFILE}" )" && pwd -P )"

source "$DIR/.env";

if [ "$1" = "run" ]; then
    docker run -p $PORT:80 npx-server:$VER
    exit $?
fi

if [ "$1" = "bash" ]; then
    docker run -it -p $PORT:80 npx-server:$VER sh
    exit $?
fi

if [ "$1" = "clear" ]; then
    docker rmi -f "$APP:$VER"
    exit $?
fi

rm -rf Dockerfile

cat <<EOF >> Dockerfile
FROM node:$VER-alpine
# https://github.com/mhart/alpine-node

# Create app directory
WORKDIR /usr/src/app

COPY server.js .
COPY lib/mkdirp.js ./lib/mkdirp.js

EXPOSE 80

CMD [ "node", "server.js", "--port", "80", "--info" ]

EOF

cp -R "$DIR/../../lib/" .
cp "$DIR/../../server.js" .

docker build -t $APP:$VER .


