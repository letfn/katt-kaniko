first = $(word 1, $(subst _, ,$@))
second = $(word 2, $(subst _, ,$@))

default:
	$(MAKE) build

%:
	argo submit --log argo-$(first).yaml
