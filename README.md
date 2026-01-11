# LaTeX Setup
This repository contains a basic setup for writing documents using LaTeX in a devcontainer.

[![Docker](https://img.shields.io/badge/docker-%230db7ed.svg?style=for-the-badge&logo=docker&logoColor=white)](https://www.docker.com/)
[![LaTeX](https://img.shields.io/badge/latex-%23008080.svg?style=for-the-badge&logo=latex&logoColor=white)](https://www.latex-project.org/)

## How to use
1. Open this repository in your favorite code editor that supports devcontainers (e.g., Visual Studio Code).

2. Build and open the devcontainer. Make sure you have Docker installed and running on your machine.

3. Make sure you have a `tex-packages.txt` file in your .devcontainer folder listing any additional LaTeX packages you want to install. Each package should be on a new line. For example:
    ```
    amsmath
    geometry
    graphicx
    ```

4. Inside the devcontainer, you can compile your LaTeX documents using the following command:
    ```
    latexmk -pdf -interaction=errorstopmode -file-line-error main.tex && rm -f main.fdb_latexmk main.fls main.log
    ```
    For ease of use, you can also use the prebuilt task:
    - Open the command palette (Ctrl+Shift+P or Cmd+Shift+P).
    - Search for "Run Task".
    - Select "Compile LaTeX".

    Make sure you have a `main.tex` file in the root of your workspace or adjust the command accordingly.