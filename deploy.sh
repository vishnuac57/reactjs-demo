 sh 'sudo docker login -u vishnuac1999 -p Vishnuselvam@1999'
 sh 'sudo docker tag reactapp:latest vishnuac1999/dev:latest'
 sh 'sudo docker push vishnuac1999/dev:latest'
 echo "image push at  dev dockerhub"
