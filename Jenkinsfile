pipeline {
    agent { 'build' } 
    stages {
        stage('Install') {
            steps("Install fastlane") {
              sh "./fastlane/install_gems.sh"
            }
        }
        stage('Build') { 
            steps {
              display("Build")
              sh './send_message.sh success build completed'
            }
        }
        stage('Test') { 
            steps {
              display("Test")
              sh './send_message.sh success test completed'
            }
        }
        stage('Deploy') { 
            steps {
              display("Deploy")
              sh './send_message.sh success deploy completed'
            }
        }
    }
}

def display(String message) {
  sh """
  println "#{message}"
  """
}
