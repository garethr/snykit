# Snykit

A simple vulnerable Ruby application deployed to Kubernetes, used for demonstration purposes.

![Ruby](https://github.com/garethr/snykit/workflows/Ruby/badge.svg) ![Build](https://github.com/garethr/snykit/workflows/Build/badge.svg)

This repository demonstrates using the [k14s](https://k14s.io/) toolchain for Kubernetes. Specifically using [YTT](https://get-ytt.io/) for templating the configuration, [kbld](https://get-kbld.io/) to build the image and store the SHA in the Kubernetes manifest and [kapp](https://get-kapp.io/) to deploy to Kubernetes.
