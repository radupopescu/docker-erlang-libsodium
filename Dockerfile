FROM erlang:19.2-slim

# Finally, we install libsodium
RUN wget https://github.com/jedisct1/libsodium/releases/download/1.0.12/libsodium-1.0.12.tar.gz \
    && tar xzf libsodium-1.0.12.tar.gz && cd libsodium-1.0.12 \
    && ./configure --prefix=/usr && make && make install
