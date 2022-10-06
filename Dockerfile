ARG BASE_CONTAINER=nvcr.io/nvidia/deepstream:6.0.1-devel
FROM $BASE_CONTAINER as base

ARG TRT_OSS_CHECKOUT_TAG=release/8.2
ARG DGPU_ARCHS=75
ARG TENSORRT_REPO=https://github.com/nvidia/TensorRT

WORKDIR /tmp
RUN git clone -b $TRT_OSS_CHECKOUT_TAG $TENSORRT_REPO
WORKDIR /tmp/TensorRT
ENV TRT_SOURCE=/tmp/TensorRT
WORKDIR $TRT_SOURCE
RUN git submodule update --init --recursive
RUN mkdir -p build
WORKDIR /tmp/TensorRT/build
RUN cmake .. -DGPU_ARCHS=$DGPU_ARCHS -DTRT_LIB_DIR=/usr/lib/x86_64-linux-gnu/ -DCMAKE_C_COMPILER=/usr/bin/gcc -DTRT_BIN_DIR=`pwd`/out
RUN make nvinfer_plugin -j$(nproc)
RUN cp $(find /tmp/TensorRT/build -name "libnvinfer_plugin.so.8.*" -print -quit) $(find /usr/lib/x86_64-linux-gnu/ -name "libnvinfer_plugin.so.8.*" -print -quit)
RUN ldconfig

WORKDIR /app

COPY ./ /app

WORKDIR /app/nvdsinfer_customparser
RUN make

WORKDIR /app

CMD [ "bash", "./run.sh" ]