

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
                      -o execution.0.ramp-up=%rampUp%      \
                      -o execution.0.concurrency=%users%   \
                      -o execution.0.hold-for=%duration%   \
                      -report'
                echo 'Test completed'
            }
        }
    }
}
