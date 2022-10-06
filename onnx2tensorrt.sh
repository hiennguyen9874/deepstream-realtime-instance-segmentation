# YOLOv5
/usr/src/tensorrt/bin/trtexec --onnx=./models/yolov5l-seg.onnx --saveEngine=./models/yolov5l-seg.trt --fp16 --workspace=8192
/usr/src/tensorrt/bin/trtexec --onnx=./models/yolov5m-seg.onnx --saveEngine=./models/yolov5m-seg.trt --fp16 --workspace=8192
/usr/src/tensorrt/bin/trtexec --onnx=./models/yolov5n-seg.onnx --saveEngine=./models/yolov5n-seg.trt --fp16 --workspace=8192
/usr/src/tensorrt/bin/trtexec --onnx=./models/yolov5s-seg.onnx --saveEngine=./models/yolov5s-seg.trt --fp16 --workspace=8192
/usr/src/tensorrt/bin/trtexec --onnx=./models/yolov5x-seg.onnx --saveEngine=./models/yolov5x-seg.trt --fp16 --workspace=8192
# YOLOv7-Mask
/usr/src/tensorrt/bin/trtexec --onnx=./models/yolov7-mask.onnx --saveEngine=./models/yolov7-mask.trt --fp16 --workspace=8192
# YOLOv7-Seg
/usr/src/tensorrt/bin/trtexec --onnx=./models/yolov7-seg-dev.onnx --saveEngine=./models/yolov7-seg-dev.trt --fp16 --workspace=8192
/usr/src/tensorrt/bin/trtexec --onnx=./models/yolov7-seg.onnx --saveEngine=./models/yolov7-seg.trt --fp16 --workspace=8192
/usr/src/tensorrt/bin/trtexec --onnx=./models/yolov7x-seg.onnx --saveEngine=./models/yolov7x-seg.trt --fp16 --workspace=8192
