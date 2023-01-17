#!/bin/bash
let res_count=0
res_count=$(kubectl get pods -o=custom-columns=CONTAINERS:.spec.containers[*].name --all-namespaces | wc -l)
echo "total number of resources is `expr $res_count - 1`"
