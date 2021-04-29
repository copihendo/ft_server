#!/bin/sh

rm -rf ~/.docker

rm -rf ~/goinfre/.docker

mkdir ~/goinfre/.docker

ln -s ~/goinfre/.docker ~/.docker

# создает линк на жесткий диск компьютера, вместо использования 5гб твоего компа