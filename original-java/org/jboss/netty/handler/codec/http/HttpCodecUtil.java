package org.jboss.netty.handler.codec.http;

import java.util.Iterator;
import java.util.List;

final class HttpCodecUtil {
    static void validateHeaderName(String str) {
        if (str == null) {
            throw new NullPointerException(HttpPostBodyUtil.NAME);
        }
        int i = 0;
        while (i < str.length()) {
            char charAt = str.charAt(i);
            if (charAt > 127) {
                throw new IllegalArgumentException("name contains non-ascii character: " + str);
            }
            switch (charAt) {
                case 9:
                case 10:
                case 11:
                case 12:
                case 13:
                case ' ':
                case ',':
                case ':':
                case ';':
                case '=':
                    throw new IllegalArgumentException("name contains one of the following prohibited characters: =,;: \\t\\r\\n\\v\\f: " + str);
                default:
                    i++;
            }
        }
    }

    static void validateHeaderValue(String str) {
        if (str == null) {
            throw new NullPointerException("value");
        }
        int i = 0;
        boolean z = false;
        while (i < str.length()) {
            char charAt = str.charAt(i);
            switch (charAt) {
                case 11:
                    throw new IllegalArgumentException("value contains a prohibited character '\\v': " + str);
                case 12:
                    throw new IllegalArgumentException("value contains a prohibited character '\\f': " + str);
                default:
                    switch (z) {
                        case false:
                            switch (charAt) {
                                case 10:
                                    z = true;
                                    break;
                                case 13:
                                    z = true;
                                    break;
                            }
                        case true:
                            switch (charAt) {
                                case 10:
                                    z = true;
                                    break;
                                default:
                                    throw new IllegalArgumentException("Only '\\n' is allowed after '\\r': " + str);
                            }
                        case true:
                            switch (charAt) {
                                case 9:
                                case ' ':
                                    z = false;
                                    break;
                                default:
                                    throw new IllegalArgumentException("Only ' ' and '\\t' are allowed after '\\n': " + str);
                            }
                    }
                    i++;
                    break;
            }
        }
        if (z) {
            throw new IllegalArgumentException("value must not end with '\\r' or '\\n':" + str);
        }
    }

    static boolean isTransferEncodingChunked(HttpMessage httpMessage) {
        List<String> headers = httpMessage.getHeaders("Transfer-Encoding");
        if (headers.isEmpty()) {
            return false;
        }
        for (String equalsIgnoreCase : headers) {
            if (equalsIgnoreCase.equalsIgnoreCase("chunked")) {
                return true;
            }
        }
        return false;
    }

    static void removeTransferEncodingChunked(HttpMessage httpMessage) {
        List headers = httpMessage.getHeaders("Transfer-Encoding");
        if (!headers.isEmpty()) {
            Iterator it = headers.iterator();
            while (it.hasNext()) {
                if (((String) it.next()).equalsIgnoreCase("chunked")) {
                    it.remove();
                }
            }
            if (headers.isEmpty()) {
                httpMessage.removeHeader("Transfer-Encoding");
            } else {
                httpMessage.setHeader("Transfer-Encoding", (Iterable<?>) headers);
            }
        }
    }

    static boolean isContentLengthSet(HttpMessage httpMessage) {
        return !httpMessage.getHeaders("Content-Length").isEmpty();
    }

    private HttpCodecUtil() {
    }
}
