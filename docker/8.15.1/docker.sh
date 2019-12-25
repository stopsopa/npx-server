
THISFILE=${BASH_SOURCE[0]}
DIR="$( cd "$( dirname "${THISFILE}" )" && pwd -P )"

source "$DIR/.env";

if [ "$1" = "clear" ]; then
    docker rmi -f "$APP:$VER"
    exit $?
fi

cp -R "$DIR/../../lib/" .
cp "$DIR/../../server.js" .

docker build -t $APP:$VER .


