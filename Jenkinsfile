pipeline {
    agent any

    stages {
        stage("Clean Workspace") {
            steps {
                script {
                    // Remove content only if the directory exists
                    if (fileExists("/var/www/html")) {
                        sh 'rm -r /var/www/html/*'
                    }
                }
            }
        }

        stage("Clone Repository") {
            steps {
                catchError(buildResult: 'SUCCESS', message: 'Error in clone stage') {
                    sh 'git clone https://github.com/dodier111/jenkins.git -b master'
                }
            }
        }

        stage("Deploy to /var/www/html/") {
            steps {
                sh 'mv * /var/www/html/'
            }
        }
    }
}
