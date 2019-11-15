package org.jboss.netty.handler.codec.http;

import java.util.LinkedList;
import java.util.List;
import java.util.Map.Entry;
import java.util.Set;
import java.util.TreeSet;
import org.jboss.netty.util.internal.CaseIgnoringComparator;

public class HttpHeaders {
    private static final int BUCKET_SIZE = 17;
    private final HeaderEntry[] entries = new HeaderEntry[17];
    private final HeaderEntry head = new HeaderEntry(-1, null, null);

    private static final class HeaderEntry implements Entry<String, String> {
        HeaderEntry after;
        HeaderEntry before;
        final int hash;
        final String key;
        HeaderEntry next;
        String value;

        HeaderEntry(int i, String str, String str2) {
            this.hash = i;
            this.key = str;
            this.value = str2;
        }

        /* access modifiers changed from: 0000 */
        public void remove() {
            this.before.after = this.after;
            this.after.before = this.before;
        }

        /* access modifiers changed from: 0000 */
        public void addBefore(HeaderEntry headerEntry) {
            this.after = headerEntry;
            this.before = headerEntry.before;
            this.before.after = this;
            this.after.before = this;
        }

        public String getKey() {
            return this.key;
        }

        public String getValue() {
            return this.value;
        }

        public String setValue(String str) {
            if (str == null) {
                throw new NullPointerException("value");
            }
            HttpCodecUtil.validateHeaderValue(str);
            String str2 = this.value;
            this.value = str;
            return str2;
        }

        public String toString() {
            return this.key + '=' + this.value;
        }
    }

    public static final class Names {
        public static final String ACCEPT = "Accept";
        public static final String ACCEPT_CHARSET = "Accept-Charset";
        public static final String ACCEPT_ENCODING = "Accept-Encoding";
        public static final String ACCEPT_LANGUAGE = "Accept-Language";
        public static final String ACCEPT_PATCH = "Accept-Patch";
        public static final String ACCEPT_RANGES = "Accept-Ranges";
        public static final String ACCESS_CONTROL_ALLOW_CREDENTIALS = "Access-Control-Allow-Credentials";
        public static final String ACCESS_CONTROL_ALLOW_HEADERS = "Access-Control-Allow-Headers";
        public static final String ACCESS_CONTROL_ALLOW_METHODS = "Access-Control-Allow-Methods";
        public static final String ACCESS_CONTROL_ALLOW_ORIGIN = "Access-Control-Allow-Origin";
        public static final String ACCESS_CONTROL_EXPOSE_HEADERS = "Access-Control-Expose-Headers";
        public static final String ACCESS_CONTROL_MAX_AGE = "Access-Control-Max-Age";
        public static final String ACCESS_CONTROL_REQUEST_HEADERS = "Access-Control-Request-Headers";
        public static final String ACCESS_CONTROL_REQUEST_METHOD = "Access-Control-Request-Method";
        public static final String AGE = "Age";
        public static final String ALLOW = "Allow";
        public static final String AUTHORIZATION = "Authorization";
        public static final String CACHE_CONTROL = "Cache-Control";
        public static final String CONNECTION = "Connection";
        public static final String CONTENT_BASE = "Content-Base";
        public static final String CONTENT_ENCODING = "Content-Encoding";
        public static final String CONTENT_LANGUAGE = "Content-Language";
        public static final String CONTENT_LENGTH = "Content-Length";
        public static final String CONTENT_LOCATION = "Content-Location";
        public static final String CONTENT_MD5 = "Content-MD5";
        public static final String CONTENT_RANGE = "Content-Range";
        public static final String CONTENT_TRANSFER_ENCODING = "Content-Transfer-Encoding";
        public static final String CONTENT_TYPE = "Content-Type";
        public static final String COOKIE = "Cookie";
        public static final String DATE = "Date";
        public static final String ETAG = "ETag";
        public static final String EXPECT = "Expect";
        public static final String EXPIRES = "Expires";
        public static final String FROM = "From";
        public static final String HOST = "Host";
        public static final String IF_MATCH = "If-Match";
        public static final String IF_MODIFIED_SINCE = "If-Modified-Since";
        public static final String IF_NONE_MATCH = "If-None-Match";
        public static final String IF_RANGE = "If-Range";
        public static final String IF_UNMODIFIED_SINCE = "If-Unmodified-Since";
        public static final String LAST_MODIFIED = "Last-Modified";
        public static final String LOCATION = "Location";
        public static final String MAX_FORWARDS = "Max-Forwards";
        public static final String ORIGIN = "Origin";
        public static final String PRAGMA = "Pragma";
        public static final String PROXY_AUTHENTICATE = "Proxy-Authenticate";
        public static final String PROXY_AUTHORIZATION = "Proxy-Authorization";
        public static final String RANGE = "Range";
        public static final String REFERER = "Referer";
        public static final String RETRY_AFTER = "Retry-After";
        public static final String SEC_WEBSOCKET_ACCEPT = "Sec-WebSocket-Accept";
        public static final String SEC_WEBSOCKET_KEY = "Sec-WebSocket-Key";
        public static final String SEC_WEBSOCKET_KEY1 = "Sec-WebSocket-Key1";
        public static final String SEC_WEBSOCKET_KEY2 = "Sec-WebSocket-Key2";
        public static final String SEC_WEBSOCKET_LOCATION = "Sec-WebSocket-Location";
        public static final String SEC_WEBSOCKET_ORIGIN = "Sec-WebSocket-Origin";
        public static final String SEC_WEBSOCKET_PROTOCOL = "Sec-WebSocket-Protocol";
        public static final String SEC_WEBSOCKET_VERSION = "Sec-WebSocket-Version";
        public static final String SERVER = "Server";
        public static final String SET_COOKIE = "Set-Cookie";
        public static final String SET_COOKIE2 = "Set-Cookie2";
        public static final String TE = "TE";
        public static final String TRAILER = "Trailer";
        public static final String TRANSFER_ENCODING = "Transfer-Encoding";
        public static final String UPGRADE = "Upgrade";
        public static final String USER_AGENT = "User-Agent";
        public static final String VARY = "Vary";
        public static final String VIA = "Via";
        public static final String WARNING = "Warning";
        public static final String WEBSOCKET_LOCATION = "WebSocket-Location";
        public static final String WEBSOCKET_ORIGIN = "WebSocket-Origin";
        public static final String WEBSOCKET_PROTOCOL = "WebSocket-Protocol";
        public static final String WWW_AUTHENTICATE = "WWW-Authenticate";

        private Names() {
        }
    }

    public static final class Values {
        public static final String APPLICATION_X_WWW_FORM_URLENCODED = "application/x-www-form-urlencoded";
        public static final String BASE64 = "base64";
        public static final String BINARY = "binary";
        public static final String BOUNDARY = "boundary";
        public static final String BYTES = "bytes";
        public static final String CHARSET = "charset";
        public static final String CHUNKED = "chunked";
        public static final String CLOSE = "close";
        public static final String COMPRESS = "compress";
        public static final String CONTINUE = "100-continue";
        public static final String DEFLATE = "deflate";
        public static final String GZIP = "gzip";
        public static final String IDENTITY = "identity";
        public static final String KEEP_ALIVE = "keep-alive";
        public static final String MAX_AGE = "max-age";
        public static final String MAX_STALE = "max-stale";
        public static final String MIN_FRESH = "min-fresh";
        public static final String MULTIPART_FORM_DATA = "multipart/form-data";
        public static final String MUST_REVALIDATE = "must-revalidate";
        public static final String NONE = "none";
        public static final String NO_CACHE = "no-cache";
        public static final String NO_STORE = "no-store";
        public static final String NO_TRANSFORM = "no-transform";
        public static final String ONLY_IF_CACHED = "only-if-cached";
        public static final String PRIVATE = "private";
        public static final String PROXY_REVALIDATE = "proxy-revalidate";
        public static final String PUBLIC = "public";
        public static final String QUOTED_PRINTABLE = "quoted-printable";
        public static final String S_MAXAGE = "s-maxage";
        public static final String TRAILERS = "trailers";
        public static final String UPGRADE = "Upgrade";
        public static final String WEBSOCKET = "WebSocket";

        private Values() {
        }
    }

    public static boolean isKeepAlive(HttpMessage httpMessage) {
        String header = httpMessage.getHeader("Connection");
        if ("close".equalsIgnoreCase(header)) {
            return false;
        }
        if (!httpMessage.getProtocolVersion().isKeepAliveDefault()) {
            return "keep-alive".equalsIgnoreCase(header);
        }
        if (!"close".equalsIgnoreCase(header)) {
            return true;
        }
        return false;
    }

    public static void setKeepAlive(HttpMessage httpMessage, boolean z) {
        if (httpMessage.getProtocolVersion().isKeepAliveDefault()) {
            if (z) {
                httpMessage.removeHeader("Connection");
            } else {
                httpMessage.setHeader("Connection", (Object) "close");
            }
        } else if (z) {
            httpMessage.setHeader("Connection", (Object) "keep-alive");
        } else {
            httpMessage.removeHeader("Connection");
        }
    }

    public static String getHeader(HttpMessage httpMessage, String str) {
        return httpMessage.getHeader(str);
    }

    public static String getHeader(HttpMessage httpMessage, String str, String str2) {
        String header = httpMessage.getHeader(str);
        return header == null ? str2 : header;
    }

    public static void setHeader(HttpMessage httpMessage, String str, Object obj) {
        httpMessage.setHeader(str, obj);
    }

    public static void setHeader(HttpMessage httpMessage, String str, Iterable<?> iterable) {
        httpMessage.setHeader(str, iterable);
    }

    public static void addHeader(HttpMessage httpMessage, String str, Object obj) {
        httpMessage.addHeader(str, obj);
    }

    public static int getIntHeader(HttpMessage httpMessage, String str) {
        String header = getHeader(httpMessage, str);
        if (header != null) {
            return Integer.parseInt(header);
        }
        throw new NumberFormatException("null");
    }

    public static int getIntHeader(HttpMessage httpMessage, String str, int i) {
        String header = getHeader(httpMessage, str);
        if (header == null) {
            return i;
        }
        try {
            return Integer.parseInt(header);
        } catch (NumberFormatException e) {
            return i;
        }
    }

    public static void setIntHeader(HttpMessage httpMessage, String str, int i) {
        httpMessage.setHeader(str, (Object) Integer.valueOf(i));
    }

    public static void setIntHeader(HttpMessage httpMessage, String str, Iterable<Integer> iterable) {
        httpMessage.setHeader(str, iterable);
    }

    public static void addIntHeader(HttpMessage httpMessage, String str, int i) {
        httpMessage.addHeader(str, Integer.valueOf(i));
    }

    public static long getContentLength(HttpMessage httpMessage) {
        return getContentLength(httpMessage, 0);
    }

    public static long getContentLength(HttpMessage httpMessage, long j) {
        String header = httpMessage.getHeader("Content-Length");
        if (header != null) {
            return Long.parseLong(header);
        }
        if (httpMessage instanceof HttpRequest) {
            HttpRequest httpRequest = (HttpRequest) httpMessage;
            if (!HttpMethod.GET.equals(httpRequest.getMethod()) || !httpRequest.containsHeader(Names.SEC_WEBSOCKET_KEY1) || !httpRequest.containsHeader(Names.SEC_WEBSOCKET_KEY2)) {
                return j;
            }
            return 8;
        } else if (!(httpMessage instanceof HttpResponse)) {
            return j;
        } else {
            HttpResponse httpResponse = (HttpResponse) httpMessage;
            if (httpResponse.getStatus().getCode() != 101 || !httpResponse.containsHeader(Names.SEC_WEBSOCKET_ORIGIN) || !httpResponse.containsHeader(Names.SEC_WEBSOCKET_LOCATION)) {
                return j;
            }
            return 16;
        }
    }

    public static void setContentLength(HttpMessage httpMessage, long j) {
        httpMessage.setHeader("Content-Length", (Object) Long.valueOf(j));
    }

    public static String getHost(HttpMessage httpMessage) {
        return httpMessage.getHeader("Host");
    }

    public static String getHost(HttpMessage httpMessage, String str) {
        return getHeader(httpMessage, "Host", str);
    }

    public static void setHost(HttpMessage httpMessage, String str) {
        httpMessage.setHeader("Host", (Object) str);
    }

    public static boolean is100ContinueExpected(HttpMessage httpMessage) {
        if (!(httpMessage instanceof HttpRequest)) {
            return false;
        }
        if (httpMessage.getProtocolVersion().compareTo(HttpVersion.HTTP_1_1) < 0) {
            return false;
        }
        String header = httpMessage.getHeader("Expect");
        if (header == null) {
            return false;
        }
        if ("100-continue".equalsIgnoreCase(header)) {
            return true;
        }
        for (String equalsIgnoreCase : httpMessage.getHeaders("Expect")) {
            if ("100-continue".equalsIgnoreCase(equalsIgnoreCase)) {
                return true;
            }
        }
        return false;
    }

    public static void set100ContinueExpected(HttpMessage httpMessage) {
        set100ContinueExpected(httpMessage, true);
    }

    public static void set100ContinueExpected(HttpMessage httpMessage, boolean z) {
        if (z) {
            httpMessage.setHeader("Expect", (Object) "100-continue");
        } else {
            httpMessage.removeHeader("Expect");
        }
    }

    private static int hash(String str) {
        int i = 0;
        for (int length = str.length() - 1; length >= 0; length--) {
            char charAt = str.charAt(length);
            if (charAt >= 'A' && charAt <= 'Z') {
                charAt = (char) (charAt + ' ');
            }
            i = (i * 31) + charAt;
        }
        if (i > 0) {
            return i;
        }
        if (i == Integer.MIN_VALUE) {
            return Integer.MAX_VALUE;
        }
        return -i;
    }

    private static boolean eq(String str, String str2) {
        int length = str.length();
        if (length != str2.length()) {
            return false;
        }
        for (int i = length - 1; i >= 0; i--) {
            char charAt = str.charAt(i);
            char charAt2 = str2.charAt(i);
            if (charAt != charAt2) {
                if (charAt >= 'A' && charAt <= 'Z') {
                    charAt = (char) (charAt + ' ');
                }
                if (charAt2 >= 'A' && charAt2 <= 'Z') {
                    charAt2 = (char) (charAt2 + ' ');
                }
                if (charAt != charAt2) {
                    return false;
                }
            }
        }
        return true;
    }

    private static int index(int i) {
        return i % 17;
    }

    HttpHeaders() {
        HeaderEntry headerEntry = this.head;
        HeaderEntry headerEntry2 = this.head;
        HeaderEntry headerEntry3 = this.head;
        headerEntry2.after = headerEntry3;
        headerEntry.before = headerEntry3;
    }

    /* access modifiers changed from: 0000 */
    public void validateHeaderName(String str) {
        HttpCodecUtil.validateHeaderName(str);
    }

    /* access modifiers changed from: 0000 */
    public void addHeader(String str, Object obj) {
        validateHeaderName(str);
        String httpHeaders = toString(obj);
        HttpCodecUtil.validateHeaderValue(httpHeaders);
        int hash = hash(str);
        addHeader0(hash, index(hash), str, httpHeaders);
    }

    private void addHeader0(int i, int i2, String str, String str2) {
        HeaderEntry headerEntry = this.entries[i2];
        HeaderEntry[] headerEntryArr = this.entries;
        HeaderEntry headerEntry2 = new HeaderEntry(i, str, str2);
        headerEntryArr[i2] = headerEntry2;
        headerEntry2.next = headerEntry;
        headerEntry2.addBefore(this.head);
    }

    /* access modifiers changed from: 0000 */
    public void removeHeader(String str) {
        if (str == null) {
            throw new NullPointerException(HttpPostBodyUtil.NAME);
        }
        int hash = hash(str);
        removeHeader0(hash, index(hash), str);
    }

    /* JADX WARNING: CFG modification limit reached, blocks count: 125 */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private void removeHeader0(int r4, int r5, java.lang.String r6) {
        /*
            r3 = this;
            org.jboss.netty.handler.codec.http.HttpHeaders$HeaderEntry[] r0 = r3.entries
            r0 = r0[r5]
            if (r0 != 0) goto L_0x0007
        L_0x0006:
            return
        L_0x0007:
            int r1 = r0.hash
            if (r1 != r4) goto L_0x0038
            java.lang.String r1 = r0.key
            boolean r1 = eq(r6, r1)
            if (r1 == 0) goto L_0x0038
            r0.remove()
            org.jboss.netty.handler.codec.http.HttpHeaders$HeaderEntry r0 = r0.next
            if (r0 == 0) goto L_0x001f
            org.jboss.netty.handler.codec.http.HttpHeaders$HeaderEntry[] r1 = r3.entries
            r1[r5] = r0
            goto L_0x0007
        L_0x001f:
            org.jboss.netty.handler.codec.http.HttpHeaders$HeaderEntry[] r0 = r3.entries
            r1 = 0
            r0[r5] = r1
            goto L_0x0006
        L_0x0025:
            int r2 = r1.hash
            if (r2 != r4) goto L_0x003d
            java.lang.String r2 = r1.key
            boolean r2 = eq(r6, r2)
            if (r2 == 0) goto L_0x003d
            org.jboss.netty.handler.codec.http.HttpHeaders$HeaderEntry r2 = r1.next
            r0.next = r2
            r1.remove()
        L_0x0038:
            org.jboss.netty.handler.codec.http.HttpHeaders$HeaderEntry r1 = r0.next
            if (r1 != 0) goto L_0x0025
            goto L_0x0006
        L_0x003d:
            r0 = r1
            goto L_0x0038
        */
        throw new UnsupportedOperationException("Method not decompiled: org.jboss.netty.handler.codec.http.HttpHeaders.removeHeader0(int, int, java.lang.String):void");
    }

    /* access modifiers changed from: 0000 */
    public void setHeader(String str, Object obj) {
        validateHeaderName(str);
        String httpHeaders = toString(obj);
        HttpCodecUtil.validateHeaderValue(httpHeaders);
        int hash = hash(str);
        int index = index(hash);
        removeHeader0(hash, index, str);
        addHeader0(hash, index, str, httpHeaders);
    }

    /* access modifiers changed from: 0000 */
    public void setHeader(String str, Iterable<?> iterable) {
        if (iterable == null) {
            throw new NullPointerException("values");
        }
        validateHeaderName(str);
        int hash = hash(str);
        int index = index(hash);
        removeHeader0(hash, index, str);
        for (Object next : iterable) {
            if (next != null) {
                String httpHeaders = toString(next);
                HttpCodecUtil.validateHeaderValue(httpHeaders);
                addHeader0(hash, index, str, httpHeaders);
            } else {
                return;
            }
        }
    }

    /* access modifiers changed from: 0000 */
    public void clearHeaders() {
        for (int i = 0; i < this.entries.length; i++) {
            this.entries[i] = null;
        }
        HeaderEntry headerEntry = this.head;
        HeaderEntry headerEntry2 = this.head;
        HeaderEntry headerEntry3 = this.head;
        headerEntry2.after = headerEntry3;
        headerEntry.before = headerEntry3;
    }

    /* access modifiers changed from: 0000 */
    public String getHeader(String str) {
        if (str == null) {
            throw new NullPointerException(HttpPostBodyUtil.NAME);
        }
        int hash = hash(str);
        for (HeaderEntry headerEntry = this.entries[index(hash)]; headerEntry != null; headerEntry = headerEntry.next) {
            if (headerEntry.hash == hash && eq(str, headerEntry.key)) {
                return headerEntry.value;
            }
        }
        return null;
    }

    /* access modifiers changed from: 0000 */
    public List<String> getHeaders(String str) {
        if (str == null) {
            throw new NullPointerException(HttpPostBodyUtil.NAME);
        }
        LinkedList linkedList = new LinkedList();
        int hash = hash(str);
        for (HeaderEntry headerEntry = this.entries[index(hash)]; headerEntry != null; headerEntry = headerEntry.next) {
            if (headerEntry.hash == hash && eq(str, headerEntry.key)) {
                linkedList.addFirst(headerEntry.value);
            }
        }
        return linkedList;
    }

    /* access modifiers changed from: 0000 */
    public List<Entry<String, String>> getHeaders() {
        LinkedList linkedList = new LinkedList();
        for (HeaderEntry headerEntry = this.head.after; headerEntry != this.head; headerEntry = headerEntry.after) {
            linkedList.add(headerEntry);
        }
        return linkedList;
    }

    /* access modifiers changed from: 0000 */
    public boolean containsHeader(String str) {
        return getHeader(str) != null;
    }

    /* access modifiers changed from: 0000 */
    public Set<String> getHeaderNames() {
        TreeSet treeSet = new TreeSet(CaseIgnoringComparator.INSTANCE);
        for (HeaderEntry headerEntry = this.head.after; headerEntry != this.head; headerEntry = headerEntry.after) {
            treeSet.add(headerEntry.key);
        }
        return treeSet;
    }

    private static String toString(Object obj) {
        if (obj == null) {
            return null;
        }
        return obj.toString();
    }
}
