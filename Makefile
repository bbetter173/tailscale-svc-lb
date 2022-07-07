build: build-controller build-runtime

push: push-controller push-runtime

build-controller:
	docker build . -t af.switchmedia.asia/mediahq/tailscale-svc-lb-controller:latest

push-controller: build-controller
	docker push af.switchmedia.asia/mediahq/tailscale-svc-lb-controller:latest

build-runtime:
	cd runtime && docker build . -t af.switchmedia.asia/mediahq/tailscale-svc-lb:latest

push-runtime: build-runtime
	docker push af.switchmedia.asia/mediahq/tailscale-svc-lb:latest
