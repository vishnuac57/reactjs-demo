pipeline{
    agent any
    
    stages{
        stage('start'){
            steps{
                sh 'cd reactjs-demo && npm install && npm run build'
            }
        }
        stage('run build.sh'){
            steps{
                checkout scmGit(branches: [[name: '*/dev']], extensions: [], userRemoteConfigs: [[url: 'https://github.com/vishnuac57/reactjs-demo.git']])
                 sh 'npm run build'
                 sh 'chmod +x ./build.sh'
                 sh './build.sh'
            }
        }
        stage('push Dev Repo'){
             when {
              expression { BRANCH_NAME == 'dev' }
            }
            steps{
                DOCKERHUB_CREDENTIALS=credentials('dockerid') {
                sh 'chmod 777 ./deploy.sh'
                sh './deploy.sh'
                }
            }
        }
        stage('push Prod repo'){
            when {
              expression { BRANCH_NAME == 'master' }
            }
            steps {
                DOCKERHUB_CREDENTIALS=credentials('dockerid') {
                 sh 'sudo docker login -u vishnuac1999 -p Vishnuselvam@1999'
                 sh 'sudo docker tag reactapp:latest vishnuac1999/reactapp:latest'
                 sh 'sudo docker push vishnuac1999/reactapp:latest'
                }           
            }
        }    
    }
}
