#!/bin/bash
ORIGINAL_CONTEXT=`kubectl config current-context`
if [[ "$ORIGINAL_CONTEXT" != "kind-service-cluster" ]]; then
	kubectl config use-context kind-service-cluster
fi
export NAFIGOS_KEYCLOAK_URL=$(kubectl get po -l istio=ingressgateway -n istio-system -o jsonpath="{.items[0].status.hostIP}"):$(kubectl get service keycloak -o jsonpath="{.spec.ports[?(@.name==\"keycloak\")].nodePort}")
export NAFIGOS_SERVICE_GATEWAY_URL=$(kubectl get po -l istio=ingressgateway -n istio-system -o jsonpath="{.items[0].status.hostIP}"):$(kubectl -n istio-system get service istio-ingressgateway -o jsonpath="{.spec.ports[?(@.name==\"http2\")].nodePort}")
export NAFIGOS_API=$NAFIGOS_SERVICE_GATEWAY_URL

kubectl config use-context kind-user-cluster
export NAFIGOS_USER_GATEWAY_URL=$(kubectl get po -l istio=ingressgateway -n istio-system -o jsonpath="{.items[0].status.hostIP}"):$(kubectl -n istio-system get service istio-ingressgateway -o jsonpath="{.spec.ports[?(@.name==\"http2\")].nodePort}")

env | grep NAFIGOS

kubectl config use-context $ORIGINAL_CONTEXT
