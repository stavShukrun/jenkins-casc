echo "-----------------------------start running!------------------------------------"
# Build and run image
docker-compose up -d --build

# Check for connection
counter=0
max_attempts=10
until $(curl --output /dev/null --silent http://localhost:8080); do
    if [ ${counter} -eq ${max_attempts} ]; then
        echo "To many try, no connection"
        exit 1
    fi
    counter=$(($counter+1))
    sleep 2
done
echo "\n You can enter http://localhost:8080 \n"
echo "-----------------------------Ready!------------------------------------"