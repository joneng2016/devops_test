pipeline {
    agent none
    options {
        timeout(time: 1, unit: 'DAYS')
        disableConcurrentBuilds()
    }
    stages('hello') {
        steps {
            echo 'hello'
        }
    }
    stage('start node') {
        steps {
            'npm run start'
        }
    }
}