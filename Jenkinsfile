pipeline{

    parameters {
        string(name: 'REPO_SRC', defaultValue : 'tf_jenkins_aws_instance', description: "Directory where the repository was cloned")
    }

    environment {
        AWS_ACCESS_KEY_ID     = credentials('AWS_ACCESS_KEY_ID')
        AWS_SECRET_ACCESS_KEY = credentials('AWS_SECRET_ACCESS_KEY')
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

        stage('Terraform Init'){
            steps{
                dir("${params.REPO_SRC}"){
                    sh 'terraform init'
                }
            }
        }

        stage('Terraform Plan'){
            steps{
                dir("${params.REPO_SRC}"){
                    sh 'terraform plan'
                }
            }
        }

        stage('Terraform Apply'){
            input{
                message "Do you want to continue?"
                ok "Yes"
                submitter "srvjenkins"
            }
            steps{
                dir("${params.REPO_SRC}"){
                    sh 'terraform apply'
                }
            }
        }

        stage('Terraform Destroy'){
            input{
                message "Do you want to continue?"
                ok "Yes"
                submitter "srvjenkins"
            }
            steps{
                dir("${params.REPO_SRC}"){
                    sh 'terraform apply'
                }
            }
        }
 
    }
}