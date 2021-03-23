

pipeline {
    agent any
    stages {
        stage ('Run Load Test') {
			input {
                message "please enter values"
                ok "Ok"
                submitter "no matter"
                parameters {
                    string(name: 'duration', defaultValue: '60')
                    string(name: 'users', defaultValue: '5')
                    string(name: 'rampUp', defaultValue: '10')
                }
            }
            steps {
                 echo 'Starting test with Taurus'
                echo "duration, ${duration}, users, ${users}, rampUp, ${rampUp}."
                sh 'bzt stuff.yml         \
                      -report'
                echo 'Test completed'
            }
        }
    }
}
