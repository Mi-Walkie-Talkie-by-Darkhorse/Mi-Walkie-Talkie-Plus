package org.jboss.netty.handler.codec.http;

import java.net.URI;
import java.nio.charset.Charset;
import java.util.ArrayList;
import java.util.Collections;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;

public class QueryStringDecoder {
    private static final int DEFAULT_MAX_PARAMS = 1024;
    private final Charset charset;
    private final boolean hasPath;
    private final int maxParams;
    private int nParams;
    private Map<String, List<String>> params;
    private String path;
    private final String uri;

    public QueryStringDecoder(String str) {
        this(str, HttpConstants.DEFAULT_CHARSET);
    }

    public QueryStringDecoder(String str, boolean z) {
        this(str, HttpConstants.DEFAULT_CHARSET, z);
    }

    public QueryStringDecoder(String str, Charset charset2) {
        this(str, charset2, true);
    }

    public QueryStringDecoder(String str, Charset charset2, boolean z) {
        this(str, charset2, z, 1024);
    }

    public QueryStringDecoder(String str, Charset charset2, boolean z, int i) {
        if (str == null) {
            throw new NullPointerException("uri");
        } else if (charset2 == null) {
            throw new NullPointerException("charset");
        } else if (i <= 0) {
            throw new IllegalArgumentException("maxParams: " + i + " (expected: a positive integer)");
        } else {
            this.uri = str.replace(';', '&');
            this.charset = charset2;
            this.maxParams = i;
            this.hasPath = z;
        }
    }

    @Deprecated
    public QueryStringDecoder(String str, String str2) {
        this(str, Charset.forName(str2));
    }

    public QueryStringDecoder(URI uri2) {
        this(uri2, HttpConstants.DEFAULT_CHARSET);
    }

    public QueryStringDecoder(URI uri2, Charset charset2) {
        this(uri2, charset2, 1024);
    }

    public QueryStringDecoder(URI uri2, Charset charset2, int i) {
        if (uri2 == null) {
            throw new NullPointerException("uri");
        } else if (charset2 == null) {
            throw new NullPointerException("charset");
        } else if (i <= 0) {
            throw new IllegalArgumentException("maxParams: " + i + " (expected: a positive integer)");
        } else {
            String rawPath = uri2.getRawPath();
            if (rawPath != null) {
                this.hasPath = true;
            } else {
                rawPath = "";
                this.hasPath = false;
            }
            this.uri = (rawPath + '?' + uri2.getRawQuery()).replace(';', '&');
            this.charset = charset2;
            this.maxParams = i;
        }
    }

    @Deprecated
    public QueryStringDecoder(URI uri2, String str) {
        this(uri2, Charset.forName(str));
    }

    public String getPath() {
        if (this.path == null) {
            if (!this.hasPath) {
                String str = "";
                this.path = str;
                return str;
            }
            int indexOf = this.uri.indexOf(63);
            if (indexOf < 0) {
                this.path = this.uri;
            } else {
                String substring = this.uri.substring(0, indexOf);
                this.path = substring;
                return substring;
            }
        }
        return this.path;
    }

    public Map<String, List<String>> getParameters() {
        if (this.params == null) {
            if (this.hasPath) {
                int length = getPath().length();
                if (this.uri.length() == length) {
                    return Collections.emptyMap();
                }
                decodeParams(this.uri.substring(length + 1));
            } else if (this.uri.length() == 0) {
                return Collections.emptyMap();
            } else {
                decodeParams(this.uri);
            }
        }
        return this.params;
    }

    private void decodeParams(String str) {
        String str2;
        int i;
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        this.params = linkedHashMap;
        this.nParams = 0;
        int i2 = 0;
        int i3 = 0;
        String str3 = null;
        while (i2 < str.length()) {
            char charAt = str.charAt(i2);
            if (charAt == '=' && str3 == null) {
                if (i3 != i2) {
                    str3 = decodeComponent(str.substring(i3, i2), this.charset);
                }
                str2 = str3;
                i = i2 + 1;
            } else if (charAt == '&') {
                if (str3 != null || i3 == i2) {
                    if (str3 != null) {
                        if (addParam(linkedHashMap, str3, decodeComponent(str.substring(i3, i2), this.charset))) {
                            str2 = null;
                        } else {
                            return;
                        }
                    }
                    str2 = str3;
                } else {
                    if (!addParam(linkedHashMap, decodeComponent(str.substring(i3, i2), this.charset), "")) {
                        return;
                    }
                    str2 = str3;
                }
                i = i2 + 1;
            } else {
                int i4 = i3;
                str2 = str3;
                i = i4;
            }
            i2++;
            int i5 = i;
            str3 = str2;
            i3 = i5;
        }
        if (i3 != i2) {
            if (str3 == null) {
                addParam(linkedHashMap, decodeComponent(str.substring(i3, i2), this.charset), "");
            } else {
                addParam(linkedHashMap, str3, decodeComponent(str.substring(i3, i2), this.charset));
            }
        } else if (str3 != null) {
            addParam(linkedHashMap, str3, "");
        }
    }

    private boolean addParam(Map<String, List<String>> map, String str, String str2) {
        if (this.nParams >= this.maxParams) {
            return false;
        }
        List list = (List) map.get(str);
        if (list == null) {
            list = new ArrayList(1);
            map.put(str, list);
        }
        list.add(str2);
        this.nParams++;
        return true;
    }

    public static String decodeComponent(String str) {
        return decodeComponent(str, HttpConstants.DEFAULT_CHARSET);
    }

    /* Code decompiled incorrectly, please refer to instructions dump. */
    public static java.lang.String decodeComponent(java.lang.String r8, java.nio.charset.Charset r9) {
        /*
            r7 = 65535(0xffff, float:9.1834E-41)
            r6 = 37
            r2 = 0
            if (r8 != 0) goto L_0x000b
            java.lang.String r8 = ""
        L_0x000a:
            return r8
        L_0x000b:
            int r4 = r8.length()
            r0 = r2
            r1 = r2
        L_0x0011:
            if (r0 >= r4) goto L_0x0021
            char r3 = r8.charAt(r0)
            switch(r3) {
                case 37: goto L_0x001d;
                case 43: goto L_0x001f;
                default: goto L_0x001a;
            }
        L_0x001a:
            int r0 = r0 + 1
            goto L_0x0011
        L_0x001d:
            int r0 = r0 + 1
        L_0x001f:
            r1 = 1
            goto L_0x001a
        L_0x0021:
            if (r1 == 0) goto L_0x000a
            byte[] r5 = new byte[r4]
            r1 = r2
            r3 = r2
        L_0x0027:
            if (r1 >= r4) goto L_0x00dd
            char r0 = r8.charAt(r1)
            switch(r0) {
                case 37: goto L_0x0041;
                case 43: goto L_0x003a;
                default: goto L_0x0030;
            }
        L_0x0030:
            int r2 = r3 + 1
            byte r0 = (byte) r0
            r5[r3] = r0
            r0 = r2
        L_0x0036:
            int r1 = r1 + 1
            r3 = r0
            goto L_0x0027
        L_0x003a:
            int r0 = r3 + 1
            r2 = 32
            r5[r3] = r2
            goto L_0x0036
        L_0x0041:
            int r0 = r4 + -1
            if (r1 != r0) goto L_0x005e
            java.lang.IllegalArgumentException r0 = new java.lang.IllegalArgumentException
            java.lang.StringBuilder r1 = new java.lang.StringBuilder
            r1.<init>()
            java.lang.String r2 = "unterminated escape sequence at end of string: "
            java.lang.StringBuilder r1 = r1.append(r2)
            java.lang.StringBuilder r1 = r1.append(r8)
            java.lang.String r1 = r1.toString()
            r0.<init>(r1)
            throw r0
        L_0x005e:
            int r1 = r1 + 1
            char r0 = r8.charAt(r1)
            if (r0 != r6) goto L_0x006b
            int r0 = r3 + 1
            r5[r3] = r6
            goto L_0x0036
        L_0x006b:
            int r2 = r4 + -1
            if (r1 != r2) goto L_0x0088
            java.lang.IllegalArgumentException r0 = new java.lang.IllegalArgumentException
            java.lang.StringBuilder r1 = new java.lang.StringBuilder
            r1.<init>()
            java.lang.String r2 = "partial escape sequence at end of string: "
            java.lang.StringBuilder r1 = r1.append(r2)
            java.lang.StringBuilder r1 = r1.append(r8)
            java.lang.String r1 = r1.toString()
            r0.<init>(r1)
            throw r0
        L_0x0088:
            char r0 = decodeHexNibble(r0)
            int r1 = r1 + 1
            char r2 = r8.charAt(r1)
            char r2 = decodeHexNibble(r2)
            if (r0 == r7) goto L_0x009a
            if (r2 != r7) goto L_0x00d7
        L_0x009a:
            java.lang.IllegalArgumentException r0 = new java.lang.IllegalArgumentException
            java.lang.StringBuilder r2 = new java.lang.StringBuilder
            r2.<init>()
            java.lang.String r3 = "invalid escape sequence `%"
            java.lang.StringBuilder r2 = r2.append(r3)
            int r3 = r1 + -1
            char r3 = r8.charAt(r3)
            java.lang.StringBuilder r2 = r2.append(r3)
            char r3 = r8.charAt(r1)
            java.lang.StringBuilder r2 = r2.append(r3)
            java.lang.String r3 = "' at index "
            java.lang.StringBuilder r2 = r2.append(r3)
            int r1 = r1 + -2
            java.lang.StringBuilder r1 = r2.append(r1)
            java.lang.String r2 = " of: "
            java.lang.StringBuilder r1 = r1.append(r2)
            java.lang.StringBuilder r1 = r1.append(r8)
            java.lang.String r1 = r1.toString()
            r0.<init>(r1)
            throw r0
        L_0x00d7:
            int r0 = r0 * 16
            int r0 = r0 + r2
            char r0 = (char) r0
            goto L_0x0030
        L_0x00dd:
            java.lang.String r8 = new java.lang.String     // Catch:{ UnsupportedEncodingException -> 0x00e9 }
            r0 = 0
            java.lang.String r1 = r9.name()     // Catch:{ UnsupportedEncodingException -> 0x00e9 }
            r8.<init>(r5, r0, r3, r1)     // Catch:{ UnsupportedEncodingException -> 0x00e9 }
            goto L_0x000a
        L_0x00e9:
            r0 = move-exception
            java.lang.IllegalArgumentException r1 = new java.lang.IllegalArgumentException
            java.lang.StringBuilder r2 = new java.lang.StringBuilder
            r2.<init>()
            java.lang.String r3 = "unsupported encoding: "
            java.lang.StringBuilder r2 = r2.append(r3)
            java.lang.String r3 = r9.name()
            java.lang.StringBuilder r2 = r2.append(r3)
            java.lang.String r2 = r2.toString()
            r1.<init>(r2, r0)
            throw r1
        */
        throw new UnsupportedOperationException("Method not decompiled: org.jboss.netty.handler.codec.http.QueryStringDecoder.decodeComponent(java.lang.String, java.nio.charset.Charset):java.lang.String");
    }

    private static char decodeHexNibble(char c) {
        if ('0' <= c && c <= '9') {
            return (char) (c - '0');
        }
        if ('a' <= c && c <= 'f') {
            return (char) ((c - 'a') + 10);
        }
        if ('A' > c || c > 'F') {
            return 65535;
        }
        return (char) ((c - 'A') + 10);
    }
}
