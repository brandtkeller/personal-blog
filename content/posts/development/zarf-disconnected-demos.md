---
title: "Disconnect your Kubernetes demos for greater confidence"
date: 2025-03-04T05:30:00-07:00
tags: ["Demonstration", "Airgap", "Zarf"]
series: "Development"
draft: false
---

![](https://content.bekindchooseviolence.com/airgap-demo.png)

If you're anything like me - you often prepare for the worst any time it's critically important to execute. 

Build - Practice - Repeat until it's muscle memory.

Once that is settled - we start thinking about contingencies. Will I be on Hotel Wifi? What will happen to my bandwidth if I try pulling container images to a local cluster? Will it wipe out my audio/video?

Whether it's an important mission hero or conference demonstration - how do you reduce potential room for error?

## Take us back

This was me in 2022 - I had been accepted to co-speak at KubeCon North America - easily the biggest venue in my speaking portfolio. 

I was unwilling to accept a powerpoint with pictures/gifs/video as the core content of my demo. It had to be real and in real-time.

My goal was simple - Standup a Kubernetes cluster locally -> Deploy Istio -> Deploy a sample application -> measure compliance -> Re-deploy sample application -> measure compliance -> Re-deploy -> Measure etc

This would include deploying both the initial setup as well as updating a deployment and rolling out an update which would replace the pods multiple times. 

We _could_ pre-pull the images in the cluster well before the presentation and hope for the best - I was and am unwilling to leave it to chance. 

## Treat your Kubernetes demo as if airgapped

Whether your demonstration requires connectivity, whether your cluster has connectivity, if you reduce the surface area of potential error you can streamline the outcomes. 

**note:** See the exact repository I used [here](https://github.com/brandtkeller/KCCNCNA-2022)

Using [zarf](https://github.com/zarf-dev/zarf), I created declarative packages including all of the resources (container images, helm charts, kubernetes manifests) for the Kubernetes resources I wanted to demonstrate. 

<details>
  <summary>Here is an example of the declarative Istio package</summary>

  ```yaml
  kind: ZarfPackageConfig
  metadata:
    name: istio-package
    description: "Simple example to load compliant and non-compliant workloads"

  components:
    - name: istio-base
      description: "istio for arm64"
      charts:
        - name: base
          url: https://istio-release.storage.googleapis.com/charts
          version: 1.15.2 
          namespace: istio-system

    - name: istiod
      description: "istiod for arm64"
      images:
        - docker.io/istio/pilot:1.15.2
        - docker.io/istio/proxyv2:1.15.2
        
      charts:
        - name: istiod
          url: https://istio-release.storage.googleapis.com/charts
          version: 1.15.2 
          namespace: istio-system
  ```
</details> 


Following [Zarf Processes](https://docs.zarf.dev/ref/) - Prior to the presentation:
- Zarf package create for the istio zarf package
  - Creates a single zarf-package tarball
- Zarf package create for the sample application package
  - Creates a single zarf-package tarball
- Download the [zarf init package](https://docs.zarf.dev/ref/init-package/)
- Created a cluster on my local machine (today I would do this with [kind](https://kind.sigs.k8s.io/))
- `zarf init` the cluster so it is ready for deploying the pre-created zarf packages.

**note:** - The zarf init process is really neat - if you want to understand how Zarf circumvents the chicken & egg problem of airgapped registry image seed and pull - you can read about it [here](https://docs.zarf.dev/contribute/nerd-notes/).

During the presentation - I accessed the cluster and demonstrated:
- `zarf package deploy [istio package tarball]`
- `zarf package deploy [sample application tarball]`
  - Perform this multiple times with different configurations

Those package deploys push the required images to the cluster-internal registry. They went from a directory on my machine to the registry - all without requiring any internet access or requests. 

Zarf then installs the helm charts/ manifests - which pull the subsequent images in the internal registry by mutating the container image references. No messing around with changing all your manifest image references to some `localhost:5000` image reference/tag etc. 

And in almost the same time it takes to run `helm install` commands - you can deploy applications without connectivity required.

## Connectivity

Connectivity here is not mutually exclusive. Zarf is built for the extremes but the requirements of the applications zarf deploys is entirely on the application. Does your application still need connectivity to the internet? That's fine - connected / semi-disconnected / disconnected there may be a number of uses that enhance outcomes. 

The goal here isn't to dictate what you can or cannot connect to - it is to reduce the surface area and ensure that you can get reproducible behaviors for each and every deployment. 

## Summary

Treating your Kuberenetes cluster as an airgapped environment can enhance your ability to reproducibly deploy applications - more so when connectivity is either a concern or a constraint. 

## Want to learn more?

- Checkout the [Zarf](https://github.com/zarf-dev/zarf) Project
- Join us on the Kubernetes slack in the `#zarf` channel
- Reach out to me on the Kubernetes slack or on socials elsewhere