FROM ubuntu:20.04
COPY ubuntu/inittimezone /usr/local/bin/inittimezone
RUN apt-get update -q -y && \
    inittimezone && \
    apt-get install -q -y --no-install-recommends \
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
        texlive-lang-german \
        texlive-latex-extra \
        texlive-science \
        texlive-xetex \
        && rm -rf /var/lib/apt/lists/*
COPY bin/* /usr/local/bin/
