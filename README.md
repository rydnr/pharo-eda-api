# PharoEDA API

This project contains the API shared by PharoEDA components.

## Motivation

PharoEDA is a framework to build event-driven applications, following DDD principles, and using ports-and-adapters for the external layers. This repository contains the common classes used by the PharoEDA components: [PharoEDA-Adapters](https://github.com/osoco/pharo-eda-adapters "PharoEDA Adapters") and [PharoEDA](https://github.com/osoco/pharo-eda-adapters "PharoEDA") itself.

## Design

PharoEDA-API defines the core classes and events used by the PharoEDA components to communicate with each other.

## Usage

You shouldn't need to add this repository to yours, unless you're developing PharoEDA itself. If you're implementing a regular PharoEDA application, this repository is loaded as an indirect dependency.

Anyway, if you need, you can load it via Metacello:

```smalltalk
Metacello new repository: 'github://osoco/pharo-eda-api:main'; baseline: #PharoEDAApi; load
```

## Work in progress

- Refactor PharoEDA.

## Credits

- Background of the Pharo image by <a href="https://pixabay.com/users/pollydot-160618/?utm_source=link-attribution&amp;utm_medium=referral&amp;utm_campaign=image&amp;utm_content=337695">PollyDot</a> from <a href="https://pixabay.com/?utm_source=link-attribution&amp;utm_medium=referral&amp;utm_campaign=image&amp;utm_content=337695">Pixabay</a>.
