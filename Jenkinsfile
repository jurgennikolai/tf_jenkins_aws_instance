pipeline{

    parameters {
        string(name: 'REPO_SRC', defaultValue : 'tf_jenkins_aws_instance', description: "Directory where the repository was cloned")
    }

    agent {
        label 'SRVC0001'
    }

    stages{
        stage('Init'){
            steps{
                dir("${params.REPO_SRC}"){
                    git "https://github.com/jurgennikolai/tf_jenkins_aws_instance"
                    sh 'pwd; ls -l'
                }
                sh "pwd; ls -l"
            }
        }
    }
}