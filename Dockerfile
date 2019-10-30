FROM ubuntu:18.04
RUN apt-get update -q -y && apt-get install -q -y --no-install-recommends \
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
        texlive-generic-extra \
        texlive-lang-german \
        texlive-latex-extra \
        texlive-fonts-extra \
        texlive-science \
        && rm -rf /var/lib/apt/lists/*
COPY bin/* /usr/local/bin/
