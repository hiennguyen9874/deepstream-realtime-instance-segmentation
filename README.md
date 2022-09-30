# Deepstream real-time instance segmentation

Real-time instance segmentation using yolov7-mask

Youtube link:
[![Real-time instance segmentation using yolov7-mask](https://img.youtube.com/vi/bQS_VNC3jEM/0.jpg)](https://www.youtube.com/watch?v=bQS_VNC3jEM)

## Prerequisites

- Deepstream 6.0.1
- [github.com/hiennguyen9874/TensorRT](https://github.com/hiennguyen9874/TensorRT)

## Install

- Export `yolov7-mask-nms.trt` from [github.com/hiennguyen9874/yolov7-mask](https://github.com/hiennguyen9874/yolov7-mask) and copy into `models` folder
- Build `libnvds_infercustomparser.so`
  - `cd nvdsinfer_customparser`
  - `make`

## Run

- `bash ./run.sh`

## Docker

### Get cuda version number

- `docker run -v ${PWD}:/app/ -w /app --rm --gpus all -it nvcr.io/nvidia/deepstream:6.0.1-devel bash -c 'nvcc deviceQuery.cpp -o deviceQuery && ./deviceQuery'`

- Modify DGPU_ARCHS in docker compose

- Example (DGPU_ARCHS=75):
  <div align="center">
      <a href="./">
          <img src="./DGPU_ARCHS.png" width="50%"/>
      </a>
  </div>

### Run

- build: `docker-compose build`

- up: `docker-compose up`

- Output video in `outputs` folder
