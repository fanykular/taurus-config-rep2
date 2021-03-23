pipeline {
    agent any
    stages {
        stage ('Run Load Test') {
			input {
                message "please enter values"
                ok "Ok"
                submitter "no matter"
                parameters {
                    float(name: 'duration', defaultValue: '20')
                    float(name: 'users', defaultValue: '5')
                    float(name: 'rampUp', defaultValue: '2')
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
