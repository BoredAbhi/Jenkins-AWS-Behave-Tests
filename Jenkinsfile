pipeline {
    agent any

    environment {
        IMAGE_NAME = "my-bdd-suite"
        IMAGE_TAG = "1.0.0"
    }

    parameters {
        choice(name: 'ENV', choices: ['dev', 'qa', 'prod'], description: 'Choose environment to run against')
    }

    stages {

        stage('Checkout Code') {
            steps {
                checkout scm
            }
        }

        stage('Build') {
            steps {
                echo "Building...."
                sh '''
                docker build -t ${IMAGE_NAME}:${IMAGE_TAG} .
                '''
            }
        }
        stage('Test') {
            steps {
                echo "Running BDD tests.."
                sh '''
                docker run --rm ${IMAGE_NAME}:${IMAGE_TAG}
                '''
            }
        }
        stage('Deploy') {
            steps {
                echo "Deploying ...."
                sh """
                echo "doing delivery stuff..."
                """
            }
        }
    }
    post {
        always {
            echo 'This always runs, cleanup or notifications.'
        }
        success {
            echo 'Build succeeded! Send success notification.'
        }
        failure {
            echo 'Build failed! Send failure alert.'
        }
        unstable {
            echo 'Build is unstable! (maybe tests failed)'
        }
        changed {
            echo 'Build status changed from last run.'
        }
    }
}
