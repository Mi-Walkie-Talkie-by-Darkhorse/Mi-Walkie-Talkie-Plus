package org.apache.http.message;

import org.apache.http.Header;
import org.apache.http.ProtocolVersion;
import org.apache.http.RequestLine;
import org.apache.http.StatusLine;
import org.apache.http.util.CharArrayBuffer;

@Deprecated
public class BasicLineFormatter implements LineFormatter {
    public static final BasicLineFormatter DEFAULT = null;

    public BasicLineFormatter() {
        throw new RuntimeException("Stub!");
    }

    /* access modifiers changed from: protected */
    public CharArrayBuffer initBuffer(CharArrayBuffer charArrayBuffer) {
        throw new RuntimeException("Stub!");
    }

    public static final String formatProtocolVersion(ProtocolVersion protocolVersion, LineFormatter lineFormatter) {
        throw new RuntimeException("Stub!");
    }

    public CharArrayBuffer appendProtocolVersion(CharArrayBuffer charArrayBuffer, ProtocolVersion protocolVersion) {
        throw new RuntimeException("Stub!");
    }

    /* access modifiers changed from: protected */
    public int estimateProtocolVersionLen(ProtocolVersion protocolVersion) {
        throw new RuntimeException("Stub!");
    }

    public static final String formatRequestLine(RequestLine requestLine, LineFormatter lineFormatter) {
        throw new RuntimeException("Stub!");
    }

    public CharArrayBuffer formatRequestLine(CharArrayBuffer charArrayBuffer, RequestLine requestLine) {
        throw new RuntimeException("Stub!");
    }

    /* access modifiers changed from: protected */
    public void doFormatRequestLine(CharArrayBuffer charArrayBuffer, RequestLine requestLine) {
        throw new RuntimeException("Stub!");
    }

    public static final String formatStatusLine(StatusLine statusLine, LineFormatter lineFormatter) {
        throw new RuntimeException("Stub!");
    }

    public CharArrayBuffer formatStatusLine(CharArrayBuffer charArrayBuffer, StatusLine statusLine) {
        throw new RuntimeException("Stub!");
    }

    /* access modifiers changed from: protected */
    public void doFormatStatusLine(CharArrayBuffer charArrayBuffer, StatusLine statusLine) {
        throw new RuntimeException("Stub!");
    }

    public static final String formatHeader(Header header, LineFormatter lineFormatter) {
        throw new RuntimeException("Stub!");
    }

    public CharArrayBuffer formatHeader(CharArrayBuffer charArrayBuffer, Header header) {
        throw new RuntimeException("Stub!");
    }

    /* access modifiers changed from: protected */
    public void doFormatHeader(CharArrayBuffer charArrayBuffer, Header header) {
        throw new RuntimeException("Stub!");
    }
}
