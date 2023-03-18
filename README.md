# Running Power Platform CLI inside a container

[Dev Containers](https://code.visualstudio.com/docs/remote/containers) do support running Power Platform CLI, but only after installing [Power Platform Tools](https://marketplace.visualstudio.com/items?itemName=microsoft-IsvExpTools.powerplatform-vscode) extension. This requires installation of VSCode. This solution is purely for running pac inside a container from terminal.

## Run

Below is an example of the command you need to run, if you want to spin up a new container and run Power Platform CLI.

```
docker run -v ./share:/root/.local/share -it ghcr.io/rajyraman/power-platform-cli-container:latest
```

```
podman machine start
podman run -v ./share:/root/.local/share -it ghcr.io/rajyraman/power-platform-cli-container:main
```
