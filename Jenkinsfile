pipeline {
    agent any

    environment {
        DOCKER_IMAGE = "subhajit/ecommerce/api-gateway:${env.BUILD_NUMBER}"
        KUBECONFIG = credentials('admin') // Add your Jenkins kubeconfig credential ID here
    }

    stages {
        stage('Build') {
            steps {
                sh './mvnw clean package -DskipTests'
            }
        }
        stage('Docker Build & Push') {
            steps {
                sh "docker build -t ${DOCKER_IMAGE} ."
                // If using remote Docker registry:
                // sh "docker push ${DOCKER_IMAGE}"
            }
        }
        stage('Deploy with Helm') {
            steps {
                sh """
                helm upgrade --install api-gateway ./helm/api-gateway \
                    --set image.tag=${env.BUILD_NUMBER} \
                    --kubeconfig ${KUBECONFIG}
                """
            }
        }
    }
}
