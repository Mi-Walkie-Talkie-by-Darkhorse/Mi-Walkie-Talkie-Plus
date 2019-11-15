package org.jboss.netty.handler.codec.http;

import java.io.UnsupportedEncodingException;
import java.net.URI;
import java.net.URISyntaxException;
import java.net.URLEncoder;
import java.nio.charset.Charset;
import java.nio.charset.UnsupportedCharsetException;
import java.util.ArrayList;
import java.util.List;

public class QueryStringEncoder {
    private final Charset charset;
    private final List<Param> params;
    private final String uri;

    private static final class Param {
        final String name;
        final String value;

        Param(String str, String str2) {
            this.value = str2;
            this.name = str;
        }
    }

    public QueryStringEncoder(String str) {
        this(str, HttpConstants.DEFAULT_CHARSET);
    }

    public QueryStringEncoder(String str, Charset charset2) {
        this.params = new ArrayList();
        if (str == null) {
            throw new NullPointerException("uri");
        } else if (charset2 == null) {
            throw new NullPointerException("charset");
        } else {
            this.uri = str;
            this.charset = charset2;
        }
    }

    @Deprecated
    public QueryStringEncoder(String str, String str2) {
        this(str, Charset.forName(str2));
    }

    public void addParam(String str, String str2) {
        if (str == null) {
            throw new NullPointerException(HttpPostBodyUtil.NAME);
        } else if (str2 == null) {
            throw new NullPointerException("value");
        } else {
            this.params.add(new Param(str, str2));
        }
    }

    public URI toUri() throws URISyntaxException {
        return new URI(toString());
    }

    public String toString() {
        if (this.params.isEmpty()) {
            return this.uri;
        }
        StringBuilder append = new StringBuilder(this.uri).append('?');
        int i = 0;
        while (true) {
            int i2 = i;
            if (i2 >= this.params.size()) {
                return append.toString();
            }
            Param param = (Param) this.params.get(i2);
            append.append(encodeComponent(param.name, this.charset));
            append.append('=');
            append.append(encodeComponent(param.value, this.charset));
            if (i2 != this.params.size() - 1) {
                append.append('&');
            }
            i = i2 + 1;
        }
    }

    private static String encodeComponent(String str, Charset charset2) {
        try {
            return URLEncoder.encode(str, charset2.name()).replaceAll("\\+", "%20");
        } catch (UnsupportedEncodingException e) {
            throw new UnsupportedCharsetException(charset2.name());
        }
    }
}
