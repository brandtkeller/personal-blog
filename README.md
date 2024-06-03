# Personal Blog
Git repository for my personal blog. 

This is where I will be writing content for hosting at `brandtkeller.com`.

## Container Image
Comprised of a hugo builder image which then copies the `public/` contents into an nginx image.

See [Dockerfile](./Dockerfile)

## Deployment
See my homelab [repository](https://github.com/brandtkeller/home-lab/tree/main/rpi-cluster) for a background of the services that host this website. 

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

## TODO

- Look at storing images in Cloudflare R2 - current method is bloating the image
    - github workflow to sync photos 
    - Change links from internal -> external
- Find a process for bumping the pods on new image
- Update image build token for action