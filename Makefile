IMAGENAME=dev-env
REPO=hjue

.PHONY: help build push all


.DEFAULT_GOAL := all

build:
		cd base;docker build -t ${REPO}/${IMAGENAME}:base .
		cd golang;docker build -t ${REPO}/${IMAGENAME}:golang .
		cd java;docker build -t ${REPO}/${IMAGENAME}:java .
		cd node;docker build -t ${REPO}/${IMAGENAME}:node .
		cd python3;docker build -t ${REPO}/${IMAGENAME}:python3 .
		cd php7;docker build -t ${REPO}/${IMAGENAME}:php7 .
		cd all;docker build -t ${REPO}/${IMAGENAME}:all .

fortest: 
		for i in  base java; do echo ${i}; done

push:
		docker push ${REPO}/${IMAGENAME}:base
		docker push ${REPO}/${IMAGENAME}:java
		docker push ${REPO}/${IMAGENAME}:golang
		docker push ${REPO}/${IMAGENAME}:node
		docker push ${REPO}/${IMAGENAME}:python3
		docker push ${REPO}/${IMAGENAME}:php7
		docker push ${REPO}/${IMAGENAME}:all

all: build push