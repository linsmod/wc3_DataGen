cmake_minimum_required(VERSION 3.10)
project(wc3_DataGen)

# 设置C++标准
set(CMAKE_CXX_STANDARD 17)
set(CMAKE_CXX_STANDARD_REQUIRED ON)
set(CMAKE_EXPORT_COMPILE_COMMANDS ON)

# 编译选项
add_compile_options(-O0 -DZ_SOLO -DNOLOGGER -g)

# 包含目录
include_directories(.)

# 链接库
find_package(CURL REQUIRED)
find_library(NCURSES_LIB ncurses)

# 定义源文件
set(UTILS_SOURCES
    utils/checksum.cpp
    utils/path.cpp
    utils/strlib.cpp
    utils/file.cpp
    utils/http.cpp
    utils/common.cpp
    utils/logger.cpp
    utils/json.cpp
    utils/utf8.cpp
)

set(DATAFILE_SOURCES
    datafile/objectdata.cpp
    datafile/game.cpp
    datafile/id.cpp
    datafile/metadata.cpp
    datafile/slk.cpp
    datafile/unitdata.cpp
    datafile/westrings.cpp
    datafile/wtsdata.cpp
)

set(RMPQ_SOURCES
    rmpq/adpcm/adpcm.cpp
    rmpq/archive.cpp
    rmpq/common.cpp
    rmpq/compress.cpp
    rmpq/huffman/huff.cpp
    rmpq/locale.cpp
    rmpq/pklib/crc32.c
    rmpq/pklib/explode.c
    rmpq/pklib/implode.c
)

set(IMAGE_SOURCES
    image/image.cpp
    image/imageblp.cpp
    image/imageblp2.cpp
    image/imagedds.cpp
    image/imagegif.cpp
    image/imagejpg.cpp
    image/imagepng.cpp
    image/imagetga.cpp
)

set(JPEG_SOURCES
    jpeg/source/jcapimin.c
    jpeg/source/jcapistd.c
    jpeg/source/jccoefct.c
    jpeg/source/jccolor.c
    jpeg/source/jcdctmgr.c
    jpeg/source/jchuff.c
    jpeg/source/jcinit.c
    jpeg/source/jcmainct.c
    jpeg/source/jcmarker.c
    jpeg/source/jcmaster.c
    jpeg/source/jcomapi.c
    jpeg/source/jcparam.c
    jpeg/source/jcphuff.c
    jpeg/source/jcprepct.c
    jpeg/source/jcsample.c
    jpeg/source/jctrans.c
    jpeg/source/jdapimin.c
    jpeg/source/jdapistd.c
    jpeg/source/jdatadst.c
    jpeg/source/jdatasrc.c
    jpeg/source/jdcoefct.c
    jpeg/source/jdcolor.c
    jpeg/source/jddctmgr.c
    jpeg/source/jdhuff.c
    jpeg/source/jdinput.c
    jpeg/source/jdmainct.c
    jpeg/source/jdmarker.c
    jpeg/source/jdmaster.c
    jpeg/source/jdmerge.c
    jpeg/source/jdphuff.c
    jpeg/source/jdpostct.c
    jpeg/source/jdsample.c
    jpeg/source/jdtrans.c
    jpeg/source/jerror.c
    jpeg/source/jfdctflt.c
    jpeg/source/jfdctfst.c
    jpeg/source/jfdctint.c
    jpeg/source/jidctflt.c
    jpeg/source/jidctfst.c
    jpeg/source/jidctint.c
    jpeg/source/jidctred.c
    jpeg/source/jmemmgr.c
    jpeg/source/jmemnobs.c
    jpeg/source/jquant1.c
    jpeg/source/jquant2.c
    jpeg/source/jutils.c
)

set(ZLIB_SOURCES
    zlib/source/adler32.c
    zlib/source/compress.c
    zlib/source/crc32.c
    zlib/source/deflate.c
    zlib/source/infback.c
    zlib/source/inffast.c
    zlib/source/inflate.c
    zlib/source/inftrees.c
    zlib/source/trees.c
    zlib/source/uncompr.c
    zlib/source/zutil.c
)

set(NGDP_SOURCES
    ngdp/ngdp.cpp
    ngdp/cdnloader.cpp
)

set(MAIN_SOURCES
    jass.cpp
    detect.cpp
    parse.cpp
    search.cpp
    hash.cpp
    icons.cpp
    main.cpp
)

# 创建可执行文件
add_executable(wc3_DataGen
    ${UTILS_SOURCES}
    ${DATAFILE_SOURCES}
    ${RMPQ_SOURCES}
    ${IMAGE_SOURCES}
    ${JPEG_SOURCES}
    ${ZLIB_SOURCES}
    ${NGDP_SOURCES}
    ${MAIN_SOURCES}
)

# 链接库
target_link_libraries(wc3_DataGen
    ${CURL_LIBRARIES}
    ${NCURSES_LIB}
)