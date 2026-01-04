# LaTeX Setup
This repository contains a basic setup for writing documents using LaTeX in containers.

## Running LaTeX in a Container
To compile LaTeX documents in a containerized environment, you can use the provided Dockerfile. Follow these steps:
```
docker compose run --rm latex
```
Or
```
latexmk -pdf -interaction=errorstopmode -file-line-error main.tex && rm -f main.fdb_latexmk main.fls main.log
```