pipeline {
    agent any
    stages {
        stage ('Run Load Test using Taurus') {
            steps {
                echo 'Starting test with Taurus'
                echo "duration, ${duration}, users, ${users}."
                sh 'bzt EdidtedNewJmeterscript.jmx         \
                      -o execution.0.hold-for=%duration%   \
                      -o execution.0.concurrency=%users%   \
                      -report'
                echo 'Testdsa completed'
            }
        }
    }
}
