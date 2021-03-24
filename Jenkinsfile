pipeline {
   agent any
   stages {
       stage('read') {
           input {
                message "please enter values"
                ok "Ok"
                submitter "no matter"
                parameters {
                    string(name: 'duration', defaultValue: '20')
                    string(name: 'users', defaultValue: '5')
                    string(name: 'rampUp', defaultValue: '2')
                }
           steps {
               script {
				echo 'Starting test with Taurus'
				bzt "C:\\NewPerformanceTask\\EdidtedNewJmeterscript.jmx -report -o settings.artifacts-dir=artifacts"
				echo 'Test completed'
               }
           }
       }
   }
}
