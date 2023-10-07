---
title: "A week of FauxPilot"
date: 2023-10-09T05:30:00-07:00
tags: ["Experiment", "AI"]
series: "Homelab"
draft: true
---

![](/images/fauxpilot.png)

I'm far from an expert on LLMs and GenAI but - if there is one thing that makes my discovery phase for investing my time into new technology - it's getting my hands dirty.

I could pay for [Copilot](https://github.com/features/copilot) and there would be some significant advantages - but I wouldn't be learning about common constraints to the operations of such capabilities in ways that translate to future product.

That and when it comes to subscriptions - I am very stingy to spend money and after seeing what FauxPilot lays on the table, I'm starting to see how getting closer to the hype cycle of new technologies is beneficial to every day productivity. 

## Your personal coding assistant

For those who haven't tested Copilot or other CodeGen technologies, you essentially plug your Integrated Development Environment (IDE) into the server (maybe this is a SaaS like Copilot) and as you are working on your code, the backend is attempting to figure out what you will be typing/coding next and suggesting it.

In VSCode this suggestions comes up as opaque text - at the touch of a key (tab for instance), you can accept the suggestion and it's now real code - or you keep coding away as it gets better at trying to understand and gain better context (someone correct me if this is incorrect).

## In Practice

Take for instance writing a struct in Golang: 
![](/images/fauxpilot-in-action.png)

I can be creating something entirely unique and it still can interpret the code and understand what needs to come next and using the right language. 

After writing some new structs for a project I am working on - it's picking up on common fields and with zero prompting is making the suggestion:

![](/images/fauxpilot-in-action-2.png)

Even now as I typw this blog - FauxPilot is suggesting what I might be writing next. 

## Deployment

Nothing about the above is new or novel - the giddy giggling that came from this working came from the fact that the whole intelligence was running 10 feet away in my sever rack. I have an "old" desktop with an rtx 2080 GPU and this was one such way to put that GPU to better use than I had been.

Following the docs and instructions, I did the following:
- Provisioned a new Ubuntu 22.04 VM on this machine (running proxmox)
- Added the GPU to the VM as a PCI device
- Followed the docs for setting up the host
- <details>
    <summary>Host Setup - Click Here</summary>
    ```

    ## Docker Setup
    sudo apt-get update
    sudo apt-get install -y ca-certificates curl gnupg
    sudo install -m 0755 -d /etc/apt/keyrings
    curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /etc/apt/keyrings/docker.gpg
    sudo chmod a+r /etc/apt/keyrings/docker.gpg

    # Add the repository to Apt sources:
    echo \
    "deb [arch="$(dpkg --print-architecture)" signed-by=/etc/apt/keyrings/docker.gpg] https://download.docker.com/linux/ubuntu \
    "$(. /etc/os-release && echo "$VERSION_CODENAME")" stable" | \
    sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
    sudo apt-get update

    sleep 30

    sudo apt-get install -y docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin

    ## Nvidia container toolkit
    curl -fsSL https://nvidia.github.io/libnvidia-container/gpgkey | sudo gpg --dearmor -o /usr/share/keyrings/nvidia-container-toolkit-keyring.gpg   && curl -s -L https://nvidia.github.io/libnvidia-container/stable/deb/nvidia-container-toolkit.list |     sed 's#deb https://#deb [signed-by=/usr/share/keyrings/nvidia-container-toolkit-keyring.gpg] https://#g' |     sudo tee /etc/apt/sources.list.d/nvidia-container-toolkit.list   &&     sudo apt-get updat

    sudo apt-get install -y nvidia-container-toolkit

    sudo nvidia-ctk runtime configure --runtime=docker

    sudo systemctl restart docker

    sudo apt-get install linux-headers-$(uname -r)

    distribution=$(. /etc/os-release;echo $ID$VERSION_ID | sed -e 's/\.//g')

    wget https://developer.download.nvidia.com/compute/cuda/repos/$distribution/x86_64/cuda-keyring_1.0-1_all.deb

    sudo dpkg -i cuda-keyring_1.0-1_all.deb

    sudo apt-get update

    sudo apt-get -y install cuda-drivers
    ```
</details>

- Cloned the [FauxPilot repository](https://github.com/fauxpilot/fauxpilot)
- Run the `setup.sh` and `launch.sh` scripts
- Install the FauxPilot vscode extension and modify the settings to point towards your fauxpilot server
- (???)
- Profit


## Footprint

The images for this are of substantial size - likely a big limiting factor for many orchestration engines such as Kubernetes. 

The model I chose `codegen-2b-multi` requires 7gb vram and otherwise the memory/cpu utilization of the fauxpilot server and proxy were quite low. 

![](/images/fauxpilot-stats.png)

## Operation

The server did reasonably well - at one point it stopped working and I had to restart the container.

My thoughts?

There doesn't seem to be a lot of activity in the community and we well know there have been a mass of advances in the model community as of this year. FauxPilot works well and I've been enjoying it as a means to put my otherwide idle GPU to use. 

## Next Steps

Personally I'm going to keep experimenting with FauxPilot and other technologies in the self-hosted / airgapped codegen space. Subjectively seeing if I can perceive any differences across technologies but also continuing to learn more about the inner-workings of models. There is a lot to digest here.

Optimally I'd love to get more hardware to support larger models and incorporate a codegen assistant as something attuned to a "serverless" experience, Thinking KNative and some codegen backend.  