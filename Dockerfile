FROM texlive/texlive:latest

WORKDIR /workdir

# Copy list of required LaTeX packages
COPY tex-packages.txt /tmp/tex-packages.txt

# Install only the requested packages
RUN tlmgr update --self && \
    tlmgr install $(cat /tmp/tex-packages.txt)

# Default compile command: stop on errors and clean aux files after success
# Use a shell so we can run cleanup only after a successful compile (&&)
CMD ["sh", "-lc", "latexmk -pdf -interaction=errorstopmode -file-line-error main.tex && rm -f main.aux main.fdb_latexmk main.fls main.log"]
