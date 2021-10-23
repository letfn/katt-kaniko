first = $(word 1, $(subst _, ,$@))
second = $(word 2, $(subst _, ,$@))

default:
	git add -u .
	-pc
	git add -u .
	pc

warm:
	skopeo copy --all --dest-tls-verify=false "docker://$(shell cat params.yaml | yq -r .build_upstream_source)" "docker://$(shell cat params.yaml | yq -r .build_source)"

build:
	argo submit --log -f params.yaml argo.yaml
