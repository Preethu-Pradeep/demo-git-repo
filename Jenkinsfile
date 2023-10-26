pipeline {
    agent any
    tools {
        // Install the Maven version configured as "M3" and add it to the path.
        jdk 'myjava'
        maven 'mymaven'
      }
    stages {
        stage('package') {
            steps {
              script{
                echo 'Hello World'
                sh "mvn package" }
            }
        }
    }
}
