export GST_DEBUG_DUMP_DOT_DIR="./logs"
rm -rf ./logs/*.svg
rm -rf ./logs/*.dot
cd nvdsinfer_customparser && make && cd ..
# sudo bash ./default.sh
/opt/nvidia/deepstream/deepstream/bin/deepstream-app -c deepstream_app.txt
# python3 export_svg.py