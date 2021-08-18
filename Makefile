HOST ?= ci2.easi.jp
INSTALL = /opt/kafkactl

.PHONY: deploy
deploy:
	rsync --exclude='.git' --filter=':- .gitignore' --rsync-path="sudo rsync" -avz . $(HOST):/opt/kafkactl

setup:
	sudo ln -s /opt/kafkactl/main /usr/local/bin/kafkactl
