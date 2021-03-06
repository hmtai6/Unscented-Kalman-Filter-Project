FROM ubuntu

ADD ./ /tmp/UKFP
RUN cd /tmp/UKFP/uWebSockets \
&& mkdir /carND \
&& apt-get update && apt-get install -y  g++ cmake git apt-utils libuv1-dev libssl-dev gcc g++ cmake make \
&& mkdir build \
&& cd build \
&& cmake .. \
&& make \
&& make install \
&& cd ../.. \
&& ln -s /usr/lib64/libuWS.so /usr/lib/libuWS.so \
