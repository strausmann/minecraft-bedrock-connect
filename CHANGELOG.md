<!-- markdownlint-disable MD012 MD024 -->
# Bedrock Connect Docker Image Change Log 📜📝

All notable changes to the "**Bedrock Connect**" Docker Image, published on Docker Hub will be documented in this file.

The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.0.0/) and this project adheres to [Semantic Versioning](https://semver.org/spec/v2.0.0.html).

---

## [Unreleased]

## [**2.4.0**] - 2023-11-02

### Changed

* Update Base Image "openjdk:22-ea-21-jdk-slim-bookworm"
* Update itzg/easy-add to v0.8.1
* Update itzg/mc_monitor to v0.12.4
* Update itzg/entrypoint-demoter to v0.4.1
* Update docker/buildx to v0.11.2

## [**2.3.0**] - 2023-07-07

### Changed

* Update itzg/easy-add to v0.8.0
* Update itzg/mc_monitor to v0.12.1
* Update docker/buildx to v0.11.1

## [**2.2.0**] - 2023-05-02

### Changed

* Update Revert fix for 1.30 ZIP Path

## [**2.1.0**] - 2023-04-18

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
