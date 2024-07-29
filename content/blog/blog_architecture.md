+++
title = 'My Blog Architecture'
date = 2024-07-29T15:44:13+01:00
+++

This is mainly just so I dont forget how I set this up. The overall gist of this site is the following:

1. I do my magic locally, and push to the [Github Repo](https://github.com/SylvanB/sylvanb.dev)
1. The Github Action uses `fly deploy` to push the changes to [Fly.io](https://fly.io), which handles the hosting and scaling.
1. Cloudflare between the user and my site for the their usual magic (DDoS protection - saves my wallet hehe).

Thats really it, the below diagram shows this all:

![Architecture Diagram of sylvanb.dev](/images/sylvanb-dev-architecture.png)

Most of it is handwaved away by the magic that is [Fly.io](https://fly.io) and [Cloudflare](https://www.cloudflare.com), and lets
me focus on the main aim of this site - letting me talk my shit unimpeded 😎.

No doubt there will be another iteration of this site
where I dip my toes into k8s or something stupid for the flex, but for now, this lets me fire-and-forget my changes into the cloud
and stand of the shoulders of giants - so you can view my memes.
