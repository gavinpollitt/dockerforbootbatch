export RUN_UID=`id -u`
export RUN_GUID=`id -g`
echo "Building container as user: ${RUN_UID}:${RUN_GUID}"
docker-compose build --no-cache
