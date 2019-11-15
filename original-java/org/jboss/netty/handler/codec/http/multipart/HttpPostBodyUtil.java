package org.jboss.netty.handler.codec.http.multipart;

import java.nio.charset.Charset;
import org.jboss.netty.buffer.ChannelBuffer;
import org.jboss.netty.handler.codec.http.HttpHeaders.Values;
import org.jboss.netty.util.CharsetUtil;

final class HttpPostBodyUtil {
    public static final String ATTACHMENT = "attachment";
    public static final String CONTENT_DISPOSITION = "Content-Disposition";
    public static final String DEFAULT_BINARY_CONTENT_TYPE = "application/octet-stream";
    public static final String DEFAULT_TEXT_CONTENT_TYPE = "text/plain";
    public static final String FILE = "file";
    public static final String FILENAME = "filename";
    public static final String FORM_DATA = "form-data";
    public static final Charset ISO_8859_1 = CharsetUtil.ISO_8859_1;
    public static final String MULTIPART_MIXED = "multipart/mixed";
    public static final String NAME = "name";
    public static final Charset US_ASCII = CharsetUtil.US_ASCII;
    public static final int chunkSize = 8096;

    static class SeekAheadNoBackArrayException extends Exception {
        private static final long serialVersionUID = -630418804938699495L;

        SeekAheadNoBackArrayException() {
        }
    }

    static class SeekAheadOptimize {
        ChannelBuffer buffer;
        byte[] bytes;
        int limit;
        int origPos;
        int pos;
        int readerIndex;

        SeekAheadOptimize(ChannelBuffer channelBuffer) throws SeekAheadNoBackArrayException {
            if (!channelBuffer.hasArray()) {
                throw new SeekAheadNoBackArrayException();
            }
            this.buffer = channelBuffer;
            this.bytes = channelBuffer.array();
            this.readerIndex = channelBuffer.readerIndex();
            int arrayOffset = channelBuffer.arrayOffset() + this.readerIndex;
            this.pos = arrayOffset;
            this.origPos = arrayOffset;
            this.limit = channelBuffer.arrayOffset() + channelBuffer.writerIndex();
        }

        /* access modifiers changed from: 0000 */
        public void setReadPosition(int i) {
            this.pos -= i;
            this.readerIndex = getReadPosition(this.pos);
            this.buffer.readerIndex(this.readerIndex);
        }

        /* access modifiers changed from: 0000 */
        public int getReadPosition(int i) {
            return (i - this.origPos) + this.readerIndex;
        }

        /* access modifiers changed from: 0000 */
        public void clear() {
            this.buffer = null;
            this.bytes = null;
            this.limit = 0;
            this.pos = 0;
            this.readerIndex = 0;
        }
    }

    public enum TransferEncodingMechanism {
        BIT7("7bit"),
        BIT8("8bit"),
        BINARY(Values.BINARY);
        
        private final String value;

        private TransferEncodingMechanism(String str) {
            this.value = str;
        }

        public String value() {
            return this.value;
        }

        public String toString() {
            return this.value;
        }
    }

    private HttpPostBodyUtil() {
    }

    static int findNonWhitespace(String str, int i) {
        while (i < str.length() && Character.isWhitespace(str.charAt(i))) {
            i++;
        }
        return i;
    }

    static int findWhitespace(String str, int i) {
        while (i < str.length() && !Character.isWhitespace(str.charAt(i))) {
            i++;
        }
        return i;
    }

    static int findEndOfString(String str) {
        int length = str.length();
        while (length > 0 && Character.isWhitespace(str.charAt(length - 1))) {
            length--;
        }
        return length;
    }
}
