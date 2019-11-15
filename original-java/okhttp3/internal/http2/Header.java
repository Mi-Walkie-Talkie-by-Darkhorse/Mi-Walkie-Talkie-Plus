package okhttp3.internal.http2;

import okhttp3.internal.Util;
import okio.ByteString;
import org.jboss.netty.handler.codec.spdy.SpdyHeaders.HttpNames;

public final class Header {
    public static final ByteString PSEUDO_PREFIX = ByteString.encodeUtf8(":");
    public static final ByteString RESPONSE_STATUS = ByteString.encodeUtf8(HttpNames.STATUS);
    public static final ByteString TARGET_AUTHORITY = ByteString.encodeUtf8(":authority");
    public static final ByteString TARGET_METHOD = ByteString.encodeUtf8(HttpNames.METHOD);
    public static final ByteString TARGET_PATH = ByteString.encodeUtf8(HttpNames.PATH);
    public static final ByteString TARGET_SCHEME = ByteString.encodeUtf8(HttpNames.SCHEME);
    final int hpackSize;
    public final ByteString name;
    public final ByteString value;

    public Header(String str, String str2) {
        this(ByteString.encodeUtf8(str), ByteString.encodeUtf8(str2));
    }

    public Header(ByteString byteString, String str) {
        this(byteString, ByteString.encodeUtf8(str));
    }

    public Header(ByteString byteString, ByteString byteString2) {
        this.name = byteString;
        this.value = byteString2;
        this.hpackSize = byteString.size() + 32 + byteString2.size();
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof Header)) {
            return false;
        }
        Header header = (Header) obj;
        if (!this.name.equals(header.name) || !this.value.equals(header.value)) {
            return false;
        }
        return true;
    }

    public int hashCode() {
        return ((this.name.hashCode() + 527) * 31) + this.value.hashCode();
    }

    public String toString() {
        return Util.format("%s: %s", this.name.utf8(), this.value.utf8());
    }
}
