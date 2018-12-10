# Comparison of ways to build Docker image for Node.js

Naive metrics from local builds (windows 10, docker for windows):

| Build type | Build time | Image size (local) | Startup time |
| ---------- | ---------- | ------------------ | ------------ |
| Docker     | ~15s       | 140MB              | 325ms        |
| Ncc        | ~7s        | 71.3MB             | 60ms         |
| Pkg        | ~13s       | 45.1MB             | 431ms        |
