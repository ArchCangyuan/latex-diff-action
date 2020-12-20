FROM xucheng/texlive-full:latest

COPY \
  LICENSE \
  README.md \
  entrypoint.sh \
  /root/

RUN apk add git g++ make asciidoc
RUN cd /opt && git clone https://gitlab.com/git-latexdiff/git-latexdiff.git

ENTRYPOINT ["/root/entrypoint.sh"]
