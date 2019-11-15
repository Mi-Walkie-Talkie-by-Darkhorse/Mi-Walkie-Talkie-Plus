package org.jboss.netty.handler.codec.compression;

import org.jboss.netty.util.internal.jzlib.JZlib;
import org.jboss.netty.util.internal.jzlib.ZStream;

final class ZlibUtil {
    static void fail(ZStream zStream, String str, int i) {
        throw exception(zStream, str, i);
    }

    static CompressionException exception(ZStream zStream, String str, int i) {
        return new CompressionException(str + " (" + i + ')' + (zStream.msg != null ? ": " + zStream.msg : ""));
    }

    static Enum<?> convertWrapperType(ZlibWrapper zlibWrapper) {
        switch (zlibWrapper) {
            case NONE:
                return JZlib.W_NONE;
            case ZLIB:
                return JZlib.W_ZLIB;
            case GZIP:
                return JZlib.W_GZIP;
            case ZLIB_OR_NONE:
                return JZlib.W_ZLIB_OR_NONE;
            default:
                throw new Error();
        }
    }

    private ZlibUtil() {
    }
}
