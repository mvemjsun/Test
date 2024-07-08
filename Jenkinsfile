pipeline {
    agent { 
      label 'build' 
    } 
    stages {
        stage('Install') {
            steps("Install fastlane") {
              sh "./fastlane/install_gems.sh"
            }
        }
        stage('Build') { 
            steps {
              display("Build")
              sh './fastlane/send_message.sh success build completed'
            }
        }
        stage('Test') { 
            steps {
              display("Test")
              sh './fastlane/send_message.sh success test completed'
            }
        }
        stage('Deploy') { 
            steps {
              display("Deploy")
              sh './fastlane/send_message.sh success deploy completed'
            }
        }
    }

    post {
      always {
            deleteDir()
      }
    }
}

def display(String message) {
  println "Stage #{message} executed"
}
