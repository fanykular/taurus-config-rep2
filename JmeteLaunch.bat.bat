Starting performance test with Jmeter

cd C:\apache-jmeter-5.4.1\bin
CALL rd /s /q C:\NewPerformanceTask\Raport\HTML
CALL Del C:\NewPerformanceTask\Raport\log.csv
jmeter.bat -n -t C:\NewPerformanceTask\EdidtedNewJmeterscript.jmx ^
-l C:\NewPerformanceTask\Raport\log.csv -e -o C:\NewPerformanceTask\Raport\HTML ^
-Jduration=%1 -Jusers=%2 -Jjmeterengine.force.system.exit=true

test completed



