package org.jboss.netty.util.internal.jzlib;

public final class JZlib {
    static final int BL_CODES = 19;
    static final int DEF_MEM_LEVEL = 8;
    static final int DEF_WBITS = 15;
    static final int D_CODES = 30;
    static final int HEAP_SIZE = 573;
    static final int LENGTH_CODES = 29;
    static final int LITERALS = 256;
    static final int L_CODES = 286;
    static final int MANY = 1440;
    static final int MAX_BITS = 15;
    static final int MAX_BL_BITS = 7;
    static final int MAX_MEM_LEVEL = 9;
    static final int MAX_WBITS = 15;
    static final int PRESET_DICT = 32;
    public static final Enum<?> W_GZIP = WrapperType.GZIP;
    public static final Enum<?> W_NONE = WrapperType.NONE;
    public static final Enum<?> W_ZLIB = WrapperType.ZLIB;
    public static final Enum<?> W_ZLIB_OR_NONE = WrapperType.ZLIB_OR_NONE;
    public static final int Z_BEST_COMPRESSION = 9;
    public static final int Z_BEST_SPEED = 1;
    public static final int Z_BUF_ERROR = -5;
    public static final int Z_DATA_ERROR = -3;
    public static final int Z_DEFAULT_COMPRESSION = -1;
    public static final int Z_DEFAULT_STRATEGY = 0;
    static final int Z_DEFLATED = 8;
    public static final int Z_ERRNO = -1;
    public static final int Z_FILTERED = 1;
    public static final int Z_FINISH = 4;
    public static final int Z_FULL_FLUSH = 3;
    public static final int Z_HUFFMAN_ONLY = 2;
    public static final int Z_MEM_ERROR = -4;
    public static final int Z_NEED_DICT = 2;
    public static final int Z_NO_COMPRESSION = 0;
    public static final int Z_NO_FLUSH = 0;
    public static final int Z_OK = 0;
    public static final int Z_PARTIAL_FLUSH = 1;
    public static final int Z_STREAM_END = 1;
    public static final int Z_STREAM_ERROR = -2;
    public static final int Z_SYNC_FLUSH = 2;
    public static final int Z_VERSION_ERROR = -6;

    enum WrapperType {
        NONE,
        ZLIB,
        GZIP,
        ZLIB_OR_NONE
    }

    private JZlib() {
    }
}
