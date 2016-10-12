FROM erlang:19.1

RUN apt-get update && apt-get install -y libsodium-dev
