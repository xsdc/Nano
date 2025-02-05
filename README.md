<p align="center">
  <img src="Assets/nanoLight.png" width="192" />
  <br />
  <h3 align="center">Nano</h3>
  <p align="center">Various aspects of Apple platform development</p>
</p>

<br />

## Contents

- [Overview](#overview)
- [Setup](#setup)
- [Tasks](#tasks)
- [Roadmap](#roadmap)

## Overview

A collection of various aspects of Apple platform development.

## Setup

- Install Task: https://taskfile.dev/installation
- Install Mise: https://mise.jdx.dev/installing-mise.html
- Once those are installed, run `task` from the root folder to see the available options.
- Tuist projects can be included selectively via `Source/Workspace.swift`

## Projects

- 💡 LeetCode solutions: [Checklist](Documentation/LeetCodeChecklist.md) | `Source/Projects/DSA`
- 📦 Object-oriented patterns within a [TMA architecture](https://docs.tuist.dev/en/guides/develop/projects/tma-architecture): `Source/Projects/Patterns/ObjectOriented`

## Tasks

- `task tuist` Generate the Xcode workspace
- `task tuist:install` # Install dependencies
- `task tuist:test` # Run the tests
- `task git:publish -- "Message"` # Publish changes via Git

## Roadmap

- 🚦 Concurrency
- 💵 Stripe SDK experiment
- 🎛️ The Composable Architecture experiments
- 🗺️ MapKit experiments: `Source/Projects/Experiments/MapKit`
- 🛠️ Functional patterns
