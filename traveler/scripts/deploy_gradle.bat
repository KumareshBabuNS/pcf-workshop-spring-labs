@echo off
cf create-service p-service-registry standard service-registry
cf create-service p-circuit-breaker-dashboard standard circuit-breaker
pushd company
cf push -p build/libs/company-0.0.1-SNAPSHOT.jar
popd
pushd feign-agency
cf push -p build/libs/agency-0.0.1-SNAPSHOT.jar
popd
echo Done!
