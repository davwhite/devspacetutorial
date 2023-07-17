# devspacetutorial
Testing for dev spaces on openshift

oc new-build --name devspace-yolo --strategy docker --binary --context-dir .
oc start-build devspace-yolo --from-dir devspace-yolo --follow 
