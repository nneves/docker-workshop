docker run -d \
    --name database \
    -p 27018:27017 \
    -v "$PWD/data/db:/data/db" \
    -e MONGO_DATA_DIR="/data/db" \
    -e MONGO_LOG_DIR="/dev/null" \
    mongo:latest --noauth --bind_ip=0.0.0.0
