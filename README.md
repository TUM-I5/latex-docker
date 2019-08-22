This docker image aims to be the universal Docker Image for LaTeX projects.

# Content
* Based on **Ubuntu 18.04LTS**
* **make** via build-essential
* **python3** and pip3
* **font-awesome** support via fonts-font-awesome and texlive-fonts-extra
* **gnuplot**
* **.dot** processing via graphviz
* **latexmk**
* **pandoc**
* **minted** codehighlighting via python3-pygments
* **Extended TexLive** via texlive, texlive-latex-extra, texlive-generic-extra and texlive-science
* German language support via texlive-lang-german

# Use Cases

## Local Development

### Build
```
$ cd my-latex-project
$ docker run --rm -it -v$(pwd):/src -w /src tumi5/latex latexmk -pdf main.tex
```

### Build Continously
```
$ cd my-latex-project
$ docker run --rm -it -v$(pwd):/src -w /src tumi5/latex latexmk -pdf -pvc -view=none main.tex
```

## Pipelines
`.gitlab-ci.yml`:
```
stages:
  - build

build:
  stage: build
  image: tumi5/latex
  script:
    - latexmk -pdf main.tex
  artifacts:
    paths:
      - main.pdf
```
Builds `main.tex` and provides the generated pdf as downloadable artifact.
