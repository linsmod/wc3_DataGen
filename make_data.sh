# 创建构建目录
mkdir -p build && cd build

# 配置项目
cmake ..
cd ..

# 构建项目
cmake --build build && \
build/wc3_DataGen "/work/war3files/" -b 1.27.1.7085 -o "$(pwd)/generated_files"
rm -f "$(pwd)/generated_files/7085.json.gz"
rm -rf /work/DENV/AndroidStudioProjects/wc3dataAnServ/app/src/main/assets/files/

# Publish
cp -r "$(pwd)/generated_files" /work/DENV/AndroidStudioProjects/wc3dataAnServ/app/src/main/assets/files
echo done.