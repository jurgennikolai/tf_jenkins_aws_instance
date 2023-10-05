pipeline{
    agent {
        label 'SRVC0001'
    }

    stages{
        stage('Init'){
            steps{
                git "https://github.com/jurgennikolai/tf_jenkins_aws_instance"
                sh "ls -l"
            }
        }
    }
}