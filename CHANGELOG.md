<!-- markdownlint-disable MD012 MD024 -->
# # Bedrock Connect Docker Image Change Log 📜📝
All notable changes to the **Bedrock Connect** Docker Image, published on Docker Hub will be documented in this file.

The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.0.0/),
and this project adheres to [Semantic Versioning](https://semver.org/spec/v2.0.0.html).

## [2.2.2](https://git.strausmann.de/minecraft/bedrock-connect/compare/2.2.1...2.2.2) (2023-11-05)


### 🐛 Bug Fixes

* **deps:** update dependency npm to v10.2.3 ([074c24d](https://git.strausmann.de/minecraft/bedrock-connect/commit/074c24d71b6f240f51f18e8bb70a74a244f124a4))


### ♻️ Chores

* **deps:** update commitlint monorepo to v18 ([03cf938](https://git.strausmann.de/minecraft/bedrock-connect/commit/03cf938e6c97e03170c0a0988823ebcd9f8b5e85))
* **deps:** update devdependencies (non-major) ([30f3966](https://git.strausmann.de/minecraft/bedrock-connect/commit/30f3966a823b0f260608260641d659ba323a9378))
* **deps:** update node.js to 0052410 ([a9bec58](https://git.strausmann.de/minecraft/bedrock-connect/commit/a9bec5841790b536faab8160aedcb0b01221aec0))

## [2.2.1](https://git.strausmann.de/minecraft/bedrock-connect/compare/2.2.0...2.2.1) (2023-11-03)


### ♻️ Chores

* **release:** 1.0.0 ([ad6990f](https://git.strausmann.de/minecraft/bedrock-connect/commit/ad6990fd19b87b32e10b31cd09439d6b91b01fad))


### 🦊 CI/CD

* **build:** CI Trigger Latest Release wird nur noch mit einem neuen Release erstellt ([00a99ee](https://git.strausmann.de/minecraft/bedrock-connect/commit/00a99ee853e954f0ce1ab37c9a82c37e9b733041))


### 🐛 Bug Fixes

* **changelog:** fix syntax in changelog.md ([1b49b1e](https://git.strausmann.de/minecraft/bedrock-connect/commit/1b49b1e6596de6e2ec6fc48b47f23d27d9403034))
* **releaserc:** fix changelog Title issue ([e8a4927](https://git.strausmann.de/minecraft/bedrock-connect/commit/e8a49275ca8aa55bced675cbc8af370660daf529))

## 2.4.0 (2023-11-02)

### Changed

* Update Base Image "openjdk:22-ea-21-jdk-slim-bookworm"
* Update itzg/easy-add to v0.8.1
* Update itzg/mc_monitor to v0.12.4
* Update itzg/entrypoint-demoter to v0.4.1
* Update docker/buildx to v0.11.2

## 2.3.0 (2023-07-07)

### Changed

* Update itzg/easy-add to v0.8.0
* Update itzg/mc_monitor to v0.12.1
* Update docker/buildx to v0.11.1

## 2.2.0 (2023-05-02)

### Changed

* Update Revert fix for 1.30 ZIP Path

## 2.1.0 (2023-04-18)

### Changed

* Fix 1.30 ZIP Path
* Update easy-add to v0.7.2

## [**2.0.0**] - 2022-11-13

### Added

* Multi Arch Images (amd64,arm64) published on Docker Hub

### Changed

* Update the Docker Base Image to openjdk:20-ea-23-slim-bullseye (#14)

## [**1.5.0**] - 2022-06-21

### Changed

* #9 Define Bedrock Connect version via BRC_VERSION environment variable. Now Bedrock Connect version independent of Docker image.
* Optimize GitLab CI Pipeline

## [**1.4.0**] - 2022-06-07

### Added

* Add console output for the Bedrock Connect Version
* Add console output for the latest apt update

## [**1.3.0**] - 2022-06-07

### Changed

* APT Update 07.06.2022
* 1.19 Bedrock Support

## [**1.2.0**] - 2022-04-21

### Added

* Adds support for Minecraft Bedrock **1.18.30** version clients
* Adds support for env variables
* Adds Docker Tag **strausmann/minecraft-bedrock-connect:1** to use **1.*** images
* Update README

## [**1.0.0**] - 2022-03-12

### Added

* Gitpod Support
