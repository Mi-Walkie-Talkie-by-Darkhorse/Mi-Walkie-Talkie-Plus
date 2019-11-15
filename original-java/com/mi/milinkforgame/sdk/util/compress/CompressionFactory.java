package com.mi.milinkforgame.sdk.util.compress;

public class CompressionFactory {
    public static final int METHOD_NONE = 0;
    public static final int METHOD_ZLIB = 1;
    private static NoCompression sNoCompression = new NoCompression();
    private static ZLibCompression sZLibCompression = new ZLibCompression();

    public static ICompression createCompression(int i) {
        switch (i) {
            case 0:
                return sNoCompression;
            case 1:
                return sZLibCompression;
            default:
                return sNoCompression;
        }
    }
}
