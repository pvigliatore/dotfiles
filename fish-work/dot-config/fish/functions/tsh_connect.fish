function tsh_connect
	set REMOTE_DEV_NAMESPACE "pvigliatore"

	tsh logout
	tsh login --proxy=teleport.tradetalk.us --auth=google

	# authenticating against staging-v2 kubernetes cluster
	tsh kube login staging-v2 --set-context-name "{{ .KubeName }}" --proxy=teleport.tradetalk.us:443

	# authenticating against remote-dev kubernetes cluster
	tsh kube login remote-dev --kube-namespace $REMOTE_DEV_NAMESPACE --set-context-name "{{.KubeName}}"  --proxy=teleport.tradetalk.us:443
end
