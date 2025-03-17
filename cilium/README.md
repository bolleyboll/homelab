# Cilium Envoy Proxy on RPis

I keep a separate submodule maintained here so that I can lock down which version on Envoy Proxy has the Image on DockerHub.

To create a new version of the image, you can run the following commands:

```bash
cd proxy/
ARCH=arm64 BAZEL_BUILD_OPTS="--define tcmalloc=gperftools" make docker-image-envoy
```

Retag the Image and push to DockerHub:

```bash
docker tag quay.io/cilium/cilium-envoy:COMMIT_HASH-arm64 freshlyjuiced/cilium-envoy:COMMIT_HASH-arm64
docker tag quay.io/cilium/cilium-envoy:latest-arm64 freshlyjuiced/cilium-envoy:latest-arm64
docker push freshlyjuiced/cilium-envoy:COMMIT_HASH-arm64
docker push freshlyjuiced/cilium-envoy:latest-arm64
```
