package org.jboss.netty.handler.codec.http;

import org.jboss.netty.buffer.ChannelBuffer;
import org.jboss.netty.handler.codec.compression.JdkZlibEncoder;
import org.jboss.netty.handler.codec.compression.ZlibEncoder;
import org.jboss.netty.handler.codec.compression.ZlibWrapper;
import org.jboss.netty.handler.codec.embedder.EncoderEmbedder;
import org.jboss.netty.util.internal.DetectionUtil;
import org.jboss.netty.util.internal.StringUtil;

public class HttpContentCompressor extends HttpContentEncoder {
    private final int compressionLevel;
    private final int memLevel;
    private final int windowBits;

    public HttpContentCompressor() {
        this(6);
    }

    public HttpContentCompressor(int i) {
        this(i, 15, 8);
    }

    public HttpContentCompressor(int i, int i2, int i3) {
        if (i < 0 || i > 9) {
            throw new IllegalArgumentException("compressionLevel: " + i + " (expected: 0-9)");
        } else if (i2 < 9 || i2 > 15) {
            throw new IllegalArgumentException("windowBits: " + i2 + " (expected: 9-15)");
        } else if (i3 < 1 || i3 > 9) {
            throw new IllegalArgumentException("memLevel: " + i3 + " (expected: 1-9)");
        } else {
            this.compressionLevel = i;
            this.windowBits = i2;
            this.memLevel = i3;
        }
    }

    /* access modifiers changed from: protected */
    public EncoderEmbedder<ChannelBuffer> newContentEncoder(HttpMessage httpMessage, String str) throws Exception {
        String header = httpMessage.getHeader("Content-Encoding");
        if (header != null && !"identity".equalsIgnoreCase(header)) {
            return null;
        }
        ZlibWrapper determineWrapper = determineWrapper(str);
        if (determineWrapper == null) {
            return null;
        }
        if (DetectionUtil.javaVersion() >= 7) {
            return new EncoderEmbedder<>(new JdkZlibEncoder(determineWrapper, this.compressionLevel));
        }
        return new EncoderEmbedder<>(new ZlibEncoder(determineWrapper, this.compressionLevel, this.windowBits, this.memLevel));
    }

    /* access modifiers changed from: protected */
    public String getTargetContentEncoding(String str) throws Exception {
        ZlibWrapper determineWrapper = determineWrapper(str);
        if (determineWrapper == null) {
            return null;
        }
        switch (determineWrapper) {
            case GZIP:
                return "gzip";
            case ZLIB:
                return "deflate";
            default:
                throw new Error();
        }
    }

    private static ZlibWrapper determineWrapper(String str) {
        float f;
        float f2;
        String[] split = StringUtil.split(str, ',');
        int length = split.length;
        int i = 0;
        float f3 = -1.0f;
        float f4 = -1.0f;
        float f5 = -1.0f;
        while (i < length) {
            String str2 = split[i];
            float f6 = 1.0f;
            int indexOf = str2.indexOf(61);
            if (indexOf != -1) {
                try {
                    f6 = Float.valueOf(str2.substring(indexOf + 1)).floatValue();
                } catch (NumberFormatException e) {
                    f6 = 0.0f;
                }
            }
            if (str2.indexOf(42) >= 0) {
                float f7 = f3;
                f = f4;
                f2 = f6;
                f6 = f7;
            } else if (str2.contains("gzip") && f6 > f4) {
                f2 = f5;
                float f8 = f6;
                f6 = f3;
                f = f8;
            } else if (!str2.contains("deflate") || f6 <= f3) {
                f6 = f3;
                f = f4;
                f2 = f5;
            } else {
                f = f4;
                f2 = f5;
            }
            i++;
            f5 = f2;
            f4 = f;
            f3 = f6;
        }
        if (f4 <= 0.0f && f3 <= 0.0f) {
            if (f5 > 0.0f) {
                if (f4 == -1.0f) {
                    return ZlibWrapper.GZIP;
                }
                if (f3 == -1.0f) {
                    return ZlibWrapper.ZLIB;
                }
            }
            return null;
        } else if (f4 >= f3) {
            return ZlibWrapper.GZIP;
        } else {
            return ZlibWrapper.ZLIB;
        }
    }
}
