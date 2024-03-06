pipeline {
    agent any

    options {
        // Configure the caching for the entire pipeline
        // You can customize the key as needed based on your project
        cache {
            paths('node_modules/') // Specify the directory you want to cache
        }
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

    post {
        failure {
            // Send email notification on build failure
            emailext subject: 'Jenkins Build Failed: ${currentBuild.fullDisplayName}',
                      body: 'The Jenkins build has failed. Please check the build logs for details.',
                      to: 'abelr1abel@gmail.com',
                      attachLog: true
        }
    }
}
