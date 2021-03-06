RECURSE(
    binsaver
    binsaver/ut
    blockcodecs
    blockcodecs/fuzz
    blockcodecs/ut
    charset
    charset/ut
    chromium_trace
    chromium_trace/benchmark
    chromium_trace/examples
    chromium_trace/ut
    colorizer
    colorizer/ut
    containers
    coroutine
    cppparser
    dbg_output
    dbg_output/ut
    diff
    diff/ut
    digest
    dns
    dns/ut
    dot_product
    dot_product/bench
    dot_product/ut
    fast_exp
    fast_exp/benchmark
    fast_exp/ut
    fast_log
    getopt
    getopt/small
    grid_creator
    grid_creator/ut
    http
    json
    json/fuzzy_test
    json/ut
    json/writer/ut
    json/yson
    json/yson/ut
    json/flex_buffers
    json/flex_buffers/ut
    lcs
    lcs/ut
    lfalloc
    lfalloc/dbg
    lfalloc/dbg_info
    lfalloc/yt
    logger
    logger/global
    logger/global/ut
    logger/ut
    malloc
    neh
    neh/asio/ut
    neh/ut
    netliba
    object_factory
    object_factory/ut
    openssl
    python
    resource
    resource/ut
    sse2neon
    statistics
    statistics/ut
    streams
    string_utils
    svnversion
    svnversion/java
    terminate_handler
    terminate_handler/sample
    threading
    unittest
    unittest/fat
    unittest/main
    unittest/ut
    yson
    par
)

IF (OS_LINUX)
    RECURSE(
    
)
ENDIF()

IF (OS_WINDOWS)
    RECURSE(
    
)
ELSE()
    RECURSE(
    sse2neon/ut
)
ENDIF()

CHECK_DEPENDENT_DIRS(
    ALLOW_ONLY
    library
    contrib
    util
    yandex #TO REMOVE
    yweb/config
)

NEED_CHECK()
