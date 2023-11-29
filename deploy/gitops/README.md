# Blog GitOps

Wanting to get to a git-driven workflow for the blog. Likely this will be a Flux workflow.

## First Iteration

The real goal here is to make the blog updatable from any location. First iteration still requires some manual steps but pushes us in the right direction. 

Deploy Flux to the cluster.
Create required flux artifacts to deploy the blog.
Manually build image
push image w/ unique tag to ghcr.io

