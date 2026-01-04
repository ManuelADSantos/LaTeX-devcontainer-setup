FROM texlive/texlive:latest

WORKDIR /workdir

# Copy list of required LaTeX packages
COPY tex-packages.txt /tmp/tex-packages.txt

# Install only the requested packages
RUN tlmgr update --self && \
    tlmgr install $(cat /tmp/tex-packages.txt)

# Default compile command
CMD ["latexmk", "-pdf", "-interaction=nonstopmode", "-file-line-error", "main.tex"]
