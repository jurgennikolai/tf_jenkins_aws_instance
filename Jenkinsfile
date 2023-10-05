pipeline{

    parameters {
        string(name: 'REPO_SRC', defaultValue : 'tf_jenkins_aws_instance', description: "Directory where the repository was cloned")
    }

    agent {
        label 'SRVC0001'
    }

    stages{
        stage('Clone Repository'){
            steps{
                dir("${params.REPO_SRC}"){
                    git "https://github.com/jurgennikolai/${params.REPO_SRC}"
                    sh 'pwd; ls -l'
                }
            }
        }

        stage('Input Test'){
            input{
                message "¿Quieres continuar?"
                ok "Si, continuemos."
                submitter "srvjenkins"
                parameters {
                    string(name: 'ANY_VALUE', defaultValue: 'Holaaaaaaaaaa', description: 'Escribe cualquier valor: ')
                }
            }
            steps{
                echo "Cualquier valor ${ANY_VALUE}"
            }
        }
    }
}