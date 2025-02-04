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

- 💡 LeetCode solutions and tests: [Checklist](Documentation/LeetCodeChecklist.md)
- 📦 Object-oriented patterns with [TMA architecture](https://docs.tuist.dev/en/guides/develop/projects/tma-architecture): `Source/Projects/Patterns/ObjectOriented`

## Setup

- Install Task: https://taskfile.dev/installation
- Install Mise: https://mise.jdx.dev/installing-mise.html
- Once those are installed, run `task` from the root folder to see the available options.
- Tuist projects can be included selectively via `Source/Workspace.swift`

## Tasks

### Tuist

- Install dependencies: `task tuist:install`
- Run the tests: `task tuist:test`
- Generate the Xcode workspace: `task tuist`

## Roadmap

- 🚦 Concurrency
- 💵 Stripe SDK experiment
- 🎛️ The Composable Architecture experiments
- 🗺️ MapKit experiments: `Source/Projects/Experiments/MapKit`
- 🛠️ Functional patterns
