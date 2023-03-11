if["$BRANCH1" = "master"];
then
    chmod +x build.sh
    ./build.sh

    chmod +x deploy.sh
    ./deploy
    docker login -u vishnuac1999 -p vishnuselvam@1999
    docker tag reactapp:latest vishnuac1999/reactapp
    docker push vishnuac1999/reactapp
else 
    if ["$BRANCH1" = "dev"];
    then    
    chmod +x build.sh
    ./build.sh

    chmod +x deploy.sh
    ./deploy
    docker login -u vishnuac1999 -p vishnuselvam@1999
    docker tag reactapp:latest vishnuac1999/reactapp
    docker push vishnuac1999/reactapp

