pipeline {
    agent any
    stages {
        stage("clean ws") {
            steps {
                script {
                    // Check if the directory exists and is not empty
                    if (fileExists("/var/www/html/") && sh(script: 'ls -A /var/www/html/', returnStatus: true) == 0) {
                        // Use sudo without password prompt
                        sh 'sudo rm -r /var/www/html/*'
                    }
                }
            }
        }
        stage("deploy") {
            steps {
                script {
                    // Use sudo without password prompt
                    sh 'sudo mv * /var/www/html/'
                }
            }
        }
        // Other stages...
    }
}

