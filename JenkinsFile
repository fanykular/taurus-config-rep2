pipeline {
    agent any
    stages {
        stage ('Run Load Test using Taurus') {
            steps {
                echo 'Starting test with Taurus'
                echo "duration, ${duration}, users, ${users}, rampUp, ${rampUp}."
                sh 'bzt taurus_jmeter_Myscript.yml         \
                      -o execution.0.ramp-up=%rampUp%      \
                      -o execution.0.concurrency=%users%   \
                      -o execution.0.hold-for=%duration%   \
                      -report'
                echo 'Test completed'
            }
        }
    }
}
