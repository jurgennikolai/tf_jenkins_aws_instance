pipeline{
    agent {
        label 'SRVC0001'
    }

    stages{
        stage('Init'){
            steps{
                dir('tf_jenkins_aws_instance'){
                    git "https://github.com/jurgennikolai/tf_jenkins_aws_instance"
                    sh 'pwd; ls -l'
                }
                sh "pwd; ls -l"
            }
        }
    }
}