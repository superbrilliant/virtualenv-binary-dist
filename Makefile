release:
	docker build -t virtualenv-binary-dist:dev .
	rm -rf ./venv
	docker run --rm -v $$(pwd):/opt/mount --rm --entrypoint cp virtualenv-binary-dist:dev -r /venv /opt/mount/venv
	tar czf venv.tar.gz venv
