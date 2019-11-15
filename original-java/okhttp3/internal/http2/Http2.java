package okhttp3.internal.http2;

import java.io.IOException;
import okhttp3.internal.Util;
import okio.ByteString;
import org.jboss.netty.handler.codec.http.HttpConstants;

public final class Http2 {
    static final String[] BINARY = new String[256];
    static final ByteString CONNECTION_PREFACE = ByteString.encodeUtf8("PRI * HTTP/2.0\r\n\r\nSM\r\n\r\n");
    static final String[] FLAGS = new String[64];
    static final byte FLAG_ACK = 1;
    static final byte FLAG_COMPRESSED = 32;
    static final byte FLAG_END_HEADERS = 4;
    static final byte FLAG_END_PUSH_PROMISE = 4;
    static final byte FLAG_END_STREAM = 1;
    static final byte FLAG_NONE = 0;
    static final byte FLAG_PADDED = 8;
    static final byte FLAG_PRIORITY = 32;
    private static final String[] FRAME_NAMES = {"DATA", "HEADERS", "PRIORITY", "RST_STREAM", "SETTINGS", "PUSH_PROMISE", "PING", "GOAWAY", "WINDOW_UPDATE", "CONTINUATION"};
    static final int INITIAL_MAX_FRAME_SIZE = 16384;
    static final byte TYPE_CONTINUATION = 9;
    static final byte TYPE_DATA = 0;
    static final byte TYPE_GOAWAY = 7;
    static final byte TYPE_HEADERS = 1;
    static final byte TYPE_PING = 6;
    static final byte TYPE_PRIORITY = 2;
    static final byte TYPE_PUSH_PROMISE = 5;
    static final byte TYPE_RST_STREAM = 3;
    static final byte TYPE_SETTINGS = 4;
    static final byte TYPE_WINDOW_UPDATE = 8;

    static {
        int[] iArr;
        for (int i = 0; i < BINARY.length; i++) {
            BINARY[i] = Util.format("%8s", Integer.toBinaryString(i)).replace(' ', '0');
        }
        FLAGS[0] = "";
        FLAGS[1] = "END_STREAM";
        int[] iArr2 = {1};
        FLAGS[8] = "PADDED";
        for (int i2 : iArr2) {
            FLAGS[i2 | 8] = FLAGS[i2] + "|PADDED";
        }
        FLAGS[4] = "END_HEADERS";
        FLAGS[32] = "PRIORITY";
        FLAGS[36] = "END_HEADERS|PRIORITY";
        for (int i3 : new int[]{4, 32, 36}) {
            for (int i4 : iArr2) {
                FLAGS[i4 | i3] = FLAGS[i4] + '|' + FLAGS[i3];
                FLAGS[i4 | i3 | 8] = FLAGS[i4] + '|' + FLAGS[i3] + "|PADDED";
            }
        }
        for (int i5 = 0; i5 < FLAGS.length; i5++) {
            if (FLAGS[i5] == null) {
                FLAGS[i5] = BINARY[i5];
            }
        }
    }

    private Http2() {
    }

    static IllegalArgumentException illegalArgument(String str, Object... objArr) {
        throw new IllegalArgumentException(Util.format(str, objArr));
    }

    static IOException ioException(String str, Object... objArr) throws IOException {
        throw new IOException(Util.format(str, objArr));
    }

    static String frameLog(boolean z, int i, int i2, byte b, byte b2) {
        String format = b < FRAME_NAMES.length ? FRAME_NAMES[b] : Util.format("0x%02x", Byte.valueOf(b));
        String formatFlags = formatFlags(b, b2);
        String str = "%s 0x%08x %5d %-13s %s";
        Object[] objArr = new Object[5];
        objArr[0] = z ? "<<" : ">>";
        objArr[1] = Integer.valueOf(i);
        objArr[2] = Integer.valueOf(i2);
        objArr[3] = format;
        objArr[4] = formatFlags;
        return Util.format(str, objArr);
    }

    static String formatFlags(byte b, byte b2) {
        if (b2 == 0) {
            return "";
        }
        switch (b) {
            case 2:
            case 3:
            case 7:
            case 8:
                return BINARY[b2];
            case 4:
            case 6:
                return b2 == 1 ? "ACK" : BINARY[b2];
            default:
                String str = b2 < FLAGS.length ? FLAGS[b2] : BINARY[b2];
                if (b == 5 && (b2 & 4) != 0) {
                    return str.replace("HEADERS", "PUSH_PROMISE");
                }
                if (b != 0 || (b2 & HttpConstants.SP) == 0) {
                    return str;
                }
                return str.replace("PRIORITY", "COMPRESSED");
        }
    }
}
