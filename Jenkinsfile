pipeline {
    agent {
         docker { 
              image 'fastlanetools/fastlane' 
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