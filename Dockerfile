FROM debian
RUN apt-get update \
    && apt-get install -y --no-install-recommends cowsay \
    && rm -rf /var/lib/apt/lists/*
ENV PATH "$PATH:/usr/games"

ENTRYPOINT ["ls -la /root"]
ENTRYPOINT ["cowsay"]
CMD ["Hello, World!"]
