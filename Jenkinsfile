pipeline {
    agent any

    stages {
        stage('Checkout') {
            steps {
                git url: 'https://github.com/BoredAbhi/Requests-API-Tests.git'
            }
        }
        stage('Install Dependencies') {
            steps {
                sh 'pip install -r requirements.txt'
            }
        }
        stage('Run Behave Tests') {
            steps {
                sh 'behave'
            }
        }
    }
}
