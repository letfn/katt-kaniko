first = $(word 1, $(subst _, ,$@))
second = $(word 2, $(subst _, ,$@))

default:
	git add -u .
	-pc
	git add -u .
	pc

build:
	argo submit --log -f params.yaml argo.yaml
