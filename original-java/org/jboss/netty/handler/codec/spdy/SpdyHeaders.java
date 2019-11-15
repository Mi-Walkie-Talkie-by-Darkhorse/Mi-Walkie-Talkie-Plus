package org.jboss.netty.handler.codec.spdy;

import java.util.LinkedList;
import java.util.List;
import java.util.Map.Entry;
import java.util.Set;
import java.util.TreeSet;
import org.jboss.netty.handler.codec.http.HttpMethod;
import org.jboss.netty.handler.codec.http.HttpResponseStatus;
import org.jboss.netty.handler.codec.http.HttpVersion;

public class SpdyHeaders {
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
            SpdyCodecUtil.validateHeaderValue(str);
            String str2 = this.value;
            this.value = str;
            return str2;
        }

        public String toString() {
            return this.key + '=' + this.value;
        }
    }

    public static final class HttpNames {
        public static final String HOST = ":host";
        public static final String METHOD = ":method";
        public static final String PATH = ":path";
        public static final String SCHEME = ":scheme";
        public static final String STATUS = ":status";
        public static final String VERSION = ":version";

        private HttpNames() {
        }
    }

    public static final class Spdy2HttpNames {
        public static final String METHOD = "method";
        public static final String SCHEME = "scheme";
        public static final String STATUS = "status";
        public static final String URL = "url";
        public static final String VERSION = "version";

        private Spdy2HttpNames() {
        }
    }

    public static String getHeader(SpdyHeaderBlock spdyHeaderBlock, String str) {
        return spdyHeaderBlock.getHeader(str);
    }

    public static String getHeader(SpdyHeaderBlock spdyHeaderBlock, String str, String str2) {
        String header = spdyHeaderBlock.getHeader(str);
        return header == null ? str2 : header;
    }

    public static void setHeader(SpdyHeaderBlock spdyHeaderBlock, String str, Object obj) {
        spdyHeaderBlock.setHeader(str, obj);
    }

    public static void setHeader(SpdyHeaderBlock spdyHeaderBlock, String str, Iterable<?> iterable) {
        spdyHeaderBlock.setHeader(str, iterable);
    }

    public static void addHeader(SpdyHeaderBlock spdyHeaderBlock, String str, Object obj) {
        spdyHeaderBlock.addHeader(str, obj);
    }

    public static void removeHost(SpdyHeaderBlock spdyHeaderBlock) {
        spdyHeaderBlock.removeHeader(HttpNames.HOST);
    }

    public static String getHost(SpdyHeaderBlock spdyHeaderBlock) {
        return spdyHeaderBlock.getHeader(HttpNames.HOST);
    }

    public static void setHost(SpdyHeaderBlock spdyHeaderBlock, String str) {
        spdyHeaderBlock.setHeader(HttpNames.HOST, (Object) str);
    }

    @Deprecated
    public static void removeMethod(SpdyHeaderBlock spdyHeaderBlock) {
        removeMethod(2, spdyHeaderBlock);
    }

    public static void removeMethod(int i, SpdyHeaderBlock spdyHeaderBlock) {
        if (i < 3) {
            spdyHeaderBlock.removeHeader(Spdy2HttpNames.METHOD);
        } else {
            spdyHeaderBlock.removeHeader(HttpNames.METHOD);
        }
    }

    @Deprecated
    public static HttpMethod getMethod(SpdyHeaderBlock spdyHeaderBlock) {
        return getMethod(2, spdyHeaderBlock);
    }

    public static HttpMethod getMethod(int i, SpdyHeaderBlock spdyHeaderBlock) {
        if (i >= 3) {
            return HttpMethod.valueOf(spdyHeaderBlock.getHeader(HttpNames.METHOD));
        }
        try {
            return HttpMethod.valueOf(spdyHeaderBlock.getHeader(Spdy2HttpNames.METHOD));
        } catch (Exception e) {
            return null;
        }
    }

    @Deprecated
    public static void setMethod(SpdyHeaderBlock spdyHeaderBlock, HttpMethod httpMethod) {
        setMethod(2, spdyHeaderBlock, httpMethod);
    }

    public static void setMethod(int i, SpdyHeaderBlock spdyHeaderBlock, HttpMethod httpMethod) {
        if (i < 3) {
            spdyHeaderBlock.setHeader(Spdy2HttpNames.METHOD, (Object) httpMethod.getName());
        } else {
            spdyHeaderBlock.setHeader(HttpNames.METHOD, (Object) httpMethod.getName());
        }
    }

    @Deprecated
    public static void removeScheme(SpdyHeaderBlock spdyHeaderBlock) {
        removeMethod(2, spdyHeaderBlock);
    }

    public static void removeScheme(int i, SpdyHeaderBlock spdyHeaderBlock) {
        if (i < 2) {
            spdyHeaderBlock.removeHeader(Spdy2HttpNames.SCHEME);
        } else {
            spdyHeaderBlock.removeHeader(HttpNames.SCHEME);
        }
    }

    @Deprecated
    public static String getScheme(SpdyHeaderBlock spdyHeaderBlock) {
        return getScheme(2, spdyHeaderBlock);
    }

    public static String getScheme(int i, SpdyHeaderBlock spdyHeaderBlock) {
        if (i < 3) {
            return spdyHeaderBlock.getHeader(Spdy2HttpNames.SCHEME);
        }
        return spdyHeaderBlock.getHeader(HttpNames.SCHEME);
    }

    @Deprecated
    public static void setScheme(SpdyHeaderBlock spdyHeaderBlock, String str) {
        setScheme(2, spdyHeaderBlock, str);
    }

    public static void setScheme(int i, SpdyHeaderBlock spdyHeaderBlock, String str) {
        if (i < 3) {
            spdyHeaderBlock.setHeader(Spdy2HttpNames.SCHEME, (Object) str);
        } else {
            spdyHeaderBlock.setHeader(HttpNames.SCHEME, (Object) str);
        }
    }

    @Deprecated
    public static void removeStatus(SpdyHeaderBlock spdyHeaderBlock) {
        removeMethod(2, spdyHeaderBlock);
    }

    public static void removeStatus(int i, SpdyHeaderBlock spdyHeaderBlock) {
        if (i < 3) {
            spdyHeaderBlock.removeHeader("status");
        } else {
            spdyHeaderBlock.removeHeader(HttpNames.STATUS);
        }
    }

    @Deprecated
    public static HttpResponseStatus getStatus(SpdyHeaderBlock spdyHeaderBlock) {
        return getStatus(2, spdyHeaderBlock);
    }

    public static HttpResponseStatus getStatus(int i, SpdyHeaderBlock spdyHeaderBlock) {
        String header;
        if (i < 3) {
            try {
                header = spdyHeaderBlock.getHeader("status");
            } catch (Exception e) {
                return null;
            }
        } else {
            header = spdyHeaderBlock.getHeader(HttpNames.STATUS);
        }
        int indexOf = header.indexOf(32);
        if (indexOf == -1) {
            return HttpResponseStatus.valueOf(Integer.parseInt(header));
        }
        int parseInt = Integer.parseInt(header.substring(0, indexOf));
        String substring = header.substring(indexOf + 1);
        HttpResponseStatus valueOf = HttpResponseStatus.valueOf(parseInt);
        if (!valueOf.getReasonPhrase().equals(substring)) {
            return new HttpResponseStatus(parseInt, substring);
        }
        return valueOf;
    }

    @Deprecated
    public static void setStatus(SpdyHeaderBlock spdyHeaderBlock, HttpResponseStatus httpResponseStatus) {
        setStatus(2, spdyHeaderBlock, httpResponseStatus);
    }

    public static void setStatus(int i, SpdyHeaderBlock spdyHeaderBlock, HttpResponseStatus httpResponseStatus) {
        if (i < 3) {
            spdyHeaderBlock.setHeader("status", (Object) httpResponseStatus.toString());
        } else {
            spdyHeaderBlock.setHeader(HttpNames.STATUS, (Object) httpResponseStatus.toString());
        }
    }

    @Deprecated
    public static void removeUrl(SpdyHeaderBlock spdyHeaderBlock) {
        removeUrl(2, spdyHeaderBlock);
    }

    public static void removeUrl(int i, SpdyHeaderBlock spdyHeaderBlock) {
        if (i < 3) {
            spdyHeaderBlock.removeHeader("url");
        } else {
            spdyHeaderBlock.removeHeader(HttpNames.PATH);
        }
    }

    @Deprecated
    public static String getUrl(SpdyHeaderBlock spdyHeaderBlock) {
        return getUrl(2, spdyHeaderBlock);
    }

    public static String getUrl(int i, SpdyHeaderBlock spdyHeaderBlock) {
        if (i < 3) {
            return spdyHeaderBlock.getHeader("url");
        }
        return spdyHeaderBlock.getHeader(HttpNames.PATH);
    }

    @Deprecated
    public static void setUrl(SpdyHeaderBlock spdyHeaderBlock, String str) {
        setUrl(2, spdyHeaderBlock, str);
    }

    public static void setUrl(int i, SpdyHeaderBlock spdyHeaderBlock, String str) {
        if (i < 3) {
            spdyHeaderBlock.setHeader("url", (Object) str);
        } else {
            spdyHeaderBlock.setHeader(HttpNames.PATH, (Object) str);
        }
    }

    @Deprecated
    public static void removeVersion(SpdyHeaderBlock spdyHeaderBlock) {
        removeVersion(2, spdyHeaderBlock);
    }

    public static void removeVersion(int i, SpdyHeaderBlock spdyHeaderBlock) {
        if (i < 3) {
            spdyHeaderBlock.removeHeader("version");
        } else {
            spdyHeaderBlock.removeHeader(HttpNames.VERSION);
        }
    }

    @Deprecated
    public static HttpVersion getVersion(SpdyHeaderBlock spdyHeaderBlock) {
        return getVersion(2, spdyHeaderBlock);
    }

    public static HttpVersion getVersion(int i, SpdyHeaderBlock spdyHeaderBlock) {
        if (i >= 3) {
            return HttpVersion.valueOf(spdyHeaderBlock.getHeader(HttpNames.VERSION));
        }
        try {
            return HttpVersion.valueOf(spdyHeaderBlock.getHeader("version"));
        } catch (Exception e) {
            return null;
        }
    }

    @Deprecated
    public static void setVersion(SpdyHeaderBlock spdyHeaderBlock, HttpVersion httpVersion) {
        setVersion(2, spdyHeaderBlock, httpVersion);
    }

    public static void setVersion(int i, SpdyHeaderBlock spdyHeaderBlock, HttpVersion httpVersion) {
        if (i < 3) {
            spdyHeaderBlock.setHeader("version", (Object) httpVersion.getText());
        } else {
            spdyHeaderBlock.setHeader(HttpNames.VERSION, (Object) httpVersion.getText());
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

    SpdyHeaders() {
        HeaderEntry headerEntry = this.head;
        HeaderEntry headerEntry2 = this.head;
        HeaderEntry headerEntry3 = this.head;
        headerEntry2.after = headerEntry3;
        headerEntry.before = headerEntry3;
    }

    /* access modifiers changed from: 0000 */
    public void addHeader(String str, Object obj) {
        String lowerCase = str.toLowerCase();
        SpdyCodecUtil.validateHeaderName(lowerCase);
        String spdyHeaders = toString(obj);
        SpdyCodecUtil.validateHeaderValue(spdyHeaders);
        int hash = hash(lowerCase);
        addHeader0(hash, index(hash), lowerCase, spdyHeaders);
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
        String lowerCase = str.toLowerCase();
        int hash = hash(lowerCase);
        removeHeader0(hash, index(hash), lowerCase);
    }

    /* JADX WARNING: CFG modification limit reached, blocks count: 125 */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private void removeHeader0(int r4, int r5, java.lang.String r6) {
        /*
            r3 = this;
            org.jboss.netty.handler.codec.spdy.SpdyHeaders$HeaderEntry[] r0 = r3.entries
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
            org.jboss.netty.handler.codec.spdy.SpdyHeaders$HeaderEntry r0 = r0.next
            if (r0 == 0) goto L_0x001f
            org.jboss.netty.handler.codec.spdy.SpdyHeaders$HeaderEntry[] r1 = r3.entries
            r1[r5] = r0
            goto L_0x0007
        L_0x001f:
            org.jboss.netty.handler.codec.spdy.SpdyHeaders$HeaderEntry[] r0 = r3.entries
            r1 = 0
            r0[r5] = r1
            goto L_0x0006
        L_0x0025:
            int r2 = r1.hash
            if (r2 != r4) goto L_0x003d
            java.lang.String r2 = r1.key
            boolean r2 = eq(r6, r2)
            if (r2 == 0) goto L_0x003d
            org.jboss.netty.handler.codec.spdy.SpdyHeaders$HeaderEntry r2 = r1.next
            r0.next = r2
            r1.remove()
        L_0x0038:
            org.jboss.netty.handler.codec.spdy.SpdyHeaders$HeaderEntry r1 = r0.next
            if (r1 != 0) goto L_0x0025
            goto L_0x0006
        L_0x003d:
            r0 = r1
            goto L_0x0038
        */
        throw new UnsupportedOperationException("Method not decompiled: org.jboss.netty.handler.codec.spdy.SpdyHeaders.removeHeader0(int, int, java.lang.String):void");
    }

    /* access modifiers changed from: 0000 */
    public void setHeader(String str, Object obj) {
        String lowerCase = str.toLowerCase();
        SpdyCodecUtil.validateHeaderName(lowerCase);
        String spdyHeaders = toString(obj);
        SpdyCodecUtil.validateHeaderValue(spdyHeaders);
        int hash = hash(lowerCase);
        int index = index(hash);
        removeHeader0(hash, index, lowerCase);
        addHeader0(hash, index, lowerCase, spdyHeaders);
    }

    /* access modifiers changed from: 0000 */
    public void setHeader(String str, Iterable<?> iterable) {
        if (iterable == null) {
            throw new NullPointerException("values");
        }
        String lowerCase = str.toLowerCase();
        SpdyCodecUtil.validateHeaderName(lowerCase);
        int hash = hash(lowerCase);
        int index = index(hash);
        removeHeader0(hash, index, lowerCase);
        for (Object next : iterable) {
            if (next != null) {
                String spdyHeaders = toString(next);
                SpdyCodecUtil.validateHeaderValue(spdyHeaders);
                addHeader0(hash, index, lowerCase, spdyHeaders);
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
        TreeSet treeSet = new TreeSet();
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
