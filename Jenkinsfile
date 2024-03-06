pipeline {
    agent any
    options {
        // Enable caching
        buildDiscarder(logRotator(numToKeepStr: '10', artifactNumToKeepStr: '5'))
        // You can customize the caching options based on your requirements
        // For example, use `buildDiscarder(logRotator(artifactDaysToKeepStr: '1', numToKeepStr: '10', artifactNumToKeepStr: '5'))`
        // to keep artifacts for 1 day
    }
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
