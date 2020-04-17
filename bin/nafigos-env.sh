#!/bin/bash
ORIGINAL_CONTEXT=`kubectl config current-context`
if [[ "$ORIGINAL_CONTEXT" != "kind-service-cluster" ]]; then
	kubectl config use-context kind-service-cluster
fi
KEYCLOAK_URL=$(kubectl get po -l istio=ingressgateway -n istio-system -o jsonpath="{.items[0].status.hostIP}"):$(kubectl get service keycloak -o jsonpath="{.spec.ports[?(@.name==\"8080\")].nodePort}")
SERVICE_GATEWAY_URL=$(kubectl get po -l istio=ingressgateway -n istio-system -o jsonpath="{.items[0].status.hostIP}"):$(kubectl -n istio-system get service istio-ingressgateway -o jsonpath="{.spec.ports[?(@.name==\"http2\")].nodePort}")
NAFIGOS_API=$SERVICE_GATEWAY_URL

kubectl config use-context kind-user-cluster
USER_GATEWAY_URL=$(kubectl get po -l istio=ingressgateway -n istio-system -o jsonpath="{.items[0].status.hostIP}"):$(kubectl -n istio-system get service istio-ingressgateway -o jsonpath="{.spec.ports[?(@.name==\"http2\")].nodePort}")


echo "KEYCLOAK_URL: $KEYCLOAK_URL"
echo "NAFIGOS_API: $NAFIGOS_API"
echo "USER_GATEWAY_URL: $USER_GATEWAY_URL"

kubectl config use-context $ORIGINAL_CONTEXT
