pipeline {
    agent any
    stages {
        stage ('Run Load Test') {
			input {
                message 'please enter values'
                ok "Ok"
                submitter "no matter"
                parameters {
                    text(name: 'duration', defaultValue: '20')
                   text(name: 'users', defaultValue: '5')
                    text(name: 'rampUp', defaultValue: '2')
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
