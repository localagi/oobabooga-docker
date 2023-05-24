# oobabooga-docker

Sophisticated docker builds for parent project [oobabooga/text-generation-webui](https://github.com/oobabooga/text-generation-webui). 

![example workflow](https://github.com/localagi/oobabooga-docker/actions/workflows/publish-docker.yml/badge.svg?branch=main)

Easy setup. Compatible. Tweakable. Scaleable.


*TODO* support different `GPTQ-for-Llama`'s
*TODO* fixp for compose mounts / dev env

#### Naming scheme

`-cc-1.2.3` - NVidia compute capability, see [NVidia CUDA GPUs](https://developer.nvidia.com/cuda-gpus)

#### Supported platforms
`amd64`

#### Supported versions
`main`

## Prerequisites

* `docker` and `docker compose` are available on your system

##### NVIDIA card required
These containers require `nvidia-container-toolkit` installed and reboot

## Run

Run `text-generation-webui` with a pretrained LLama-30B model on e.g. `RTX 3090`, `RTX 4090`

* get `docker-compose.yml` (clone repo, copy or else) 
* Download [OpenAssistant-SFT-7-Llama-30B-GPTQ](https://huggingface.co/TheBloke/OpenAssistant-SFT-7-Llama-30B-GPTQ) into `../models`
* Run `docker compose up`
* Model will load into gpu
* open/refresh `http://localhost:7860`

### Runtime options
Environment variables to set for the specific service

#### compute capability selection `COMPUTE_VERSION`
Prepend, e.g. `COMPUTE_VERSION=6.1` for Tesla P40

#### local model directory `LOCAL_MODEL_DIR`
Prepend, e.g. `LOCAL_MODEL_DIR=/my/path/to/models`

### Get the latest builds / update
`docker compose pull`

### Cleanup
`docker compose rm`

## Contributing

When there is a new version and there is need of builds or you require the latest main build, feel free to open an issue

## Problems?

Open an issue on the [Issue Tracker](../../issues)

## Limitations
We cannot support issues regarding the base software. Please refer to the main project page mentioned in the second line of this card.
