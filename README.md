# Personal Blog
Git repository for my personal blog. 

This is where I will be writing content for hosting at `brandtkeller.com`.

## Container Image
Comprised of a hugo builder image which then copies the `public/` contents into an nginx image.

See [Dockerfile](./Dockerfile)

## Deployment
See the zarf [manifest](./deploy/kubernetes/zarf.yaml) for a background of the services that host this website. 

## Theme

Poison

## Clone

In order to setup this repo locally from a fresh clone you'll need to:
```shell
git clone <this repo>
cd personal-blog
git submodule init
git submodule update
hugo serve
```