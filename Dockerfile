FROM ubuntu:24.04

COPY ubuntu/inittimezone /usr/local/bin/inittimezone

RUN apt-get update -q -y && inittimezone && apt-get upgrade -y && apt-get install -q -y --no-install-recommends \
    build-essential \
    fonts-font-awesome \
    gnuplot \
    graphviz \
    latexmk \
    lmodern \
    pandoc \
    python3 \
    python3-pip \
    python3-pygments \
    texlive \
    texlive-fonts-recommended \
    texlive-fonts-extra \
    texlive-lang-german \
    texlive-lang-english \
    texlive-latex-extra \
    texlive-science \
    texlive-bibtex-extra \
    texlive-publishers \
    texlive-xetex && \
    apt-get clean -y && \
    apt-get autoremove -y && \
    apt-get autoclean -y && \
    rm -rf /var/lib/apt/lists/*

COPY bin/* /usr/local/bin/
