FROM erlang:19

# Finally, we install libsodium
RUN wget https://github.com/jedisct1/libsodium/releases/download/1.0.11/libsodium-1.0.11.tar.gz \
    && tar xzf libsodium-1.0.11.tar.gz && cd libsodium-1.0.11 \
    && ./configure --prefix=/usr && make && make install
