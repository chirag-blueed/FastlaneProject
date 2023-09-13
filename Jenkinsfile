pipeline {
    agent {
        docker {
            image 'node:18.17.1-alpine3.18' 
            args '-p 3000:3000' 
        }
    }
    stages {
        stage('Build') { 
            steps {
                echo "Cleaning node_modules.."
                sh "rm -rf node_modules"
                sh 'npm install' 
            }
        }
        stage('Test') {
            steps {
                sh 'npm test'
            }
        }
        stage('Generate signed Android release APK.') {
            steps {
                echo "Buling signed release APK..."
                echo "Switch to android"
                sh 'cd android'
                sh 'Fastlane build'
                sh 'cd ..'
            }
        }
    }
}