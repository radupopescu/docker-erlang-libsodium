FROM erlang:21.1

# Finally, we install libsodium
RUN wget https://github.com/jedisct1/libsodium/releases/download/1.0.16/libsodium-1.0.16.tar.gz \
    && tar xzf libsodium-1.0.16.tar.gz && cd libsodium-1.0.16 \
    && ./configure --prefix=/usr && make && make install
