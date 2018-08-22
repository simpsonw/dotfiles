#!/bin/sh
echo "source ~/.golang.bash" >> ~/.bashrc
source ~/.bashrc
sudo apt install golang-go
go get -u -v github.com/nsf/gocode
go get -u -v github.com/rogpeppe/godef
go get -u -v golang.org/x/tools/cmd/guru
go get -u -v golang.org/x/tools/cmd/gorename
go get -u -v golang.org/x/tools/cmd/goimports
