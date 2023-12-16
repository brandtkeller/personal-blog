# Blog Deployment

There may come a future date when this blog is not self-hosted on Kubernetes. Until that time, I'll maintain a Kubernetes directory that contains the [Zarf](zarf.dev) package manifest for reproducibly deploying my blog tech stack.

## Tech Stack

This Blog is built and hosted on:
- 2x Rpi4 w/ DietPi installed
- K3s w/ an external datastore (more on that later - but for HA)
- Zarf init package
    - Zarf registry/agent
-Zarf blog package
    - Cert-manager
    - Cloudflared Tunnel
    - Nginx manifests
        - Using the image built in the root of this repository
## Setting up the cloudflare tunnel

