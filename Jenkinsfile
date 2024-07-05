pipeline {
    agent any 
    stages {
        stage('Build') { 
            steps {
              display("Build")
            }
        }
        stage('Test') { 
            steps {
              display("Test")
            }
        }
        stage('Deploy') { 
            steps {
              display("Deploy")
            }
        }
    }
}

def display(String message) {
  sh """
  println "#{message}"
  """
}
