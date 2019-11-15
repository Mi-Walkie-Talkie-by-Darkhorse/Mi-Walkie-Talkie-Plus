package org.jboss.netty.handler.codec.spdy;

import org.jboss.netty.handler.codec.http.HttpHeaders;
import org.jboss.netty.handler.codec.http.HttpMessage;

public final class SpdyHttpHeaders {

    public static final class Names {
        public static final String ASSOCIATED_TO_STREAM_ID = "X-SPDY-Associated-To-Stream-ID";
        public static final String PRIORITY = "X-SPDY-Priority";
        public static final String SCHEME = "X-SPDY-Scheme";
        public static final String STREAM_ID = "X-SPDY-Stream-ID";
        public static final String URL = "X-SPDY-URL";

        private Names() {
        }
    }

    private SpdyHttpHeaders() {
    }

    @Deprecated
    public static void removeStreamID(HttpMessage httpMessage) {
        removeStreamId(httpMessage);
    }

    public static void removeStreamId(HttpMessage httpMessage) {
        httpMessage.removeHeader(Names.STREAM_ID);
    }

    @Deprecated
    public static int getStreamID(HttpMessage httpMessage) {
        return getStreamId(httpMessage);
    }

    public static int getStreamId(HttpMessage httpMessage) {
        return HttpHeaders.getIntHeader(httpMessage, Names.STREAM_ID);
    }

    @Deprecated
    public static void setStreamID(HttpMessage httpMessage, int i) {
        setStreamId(httpMessage, i);
    }

    public static void setStreamId(HttpMessage httpMessage, int i) {
        HttpHeaders.setIntHeader(httpMessage, Names.STREAM_ID, i);
    }

    @Deprecated
    public static void removeAssociatedToStreamID(HttpMessage httpMessage) {
        removeAssociatedToStreamId(httpMessage);
    }

    public static void removeAssociatedToStreamId(HttpMessage httpMessage) {
        httpMessage.removeHeader(Names.ASSOCIATED_TO_STREAM_ID);
    }

    @Deprecated
    public static int getAssociatedToStreamID(HttpMessage httpMessage) {
        return getAssociatedToStreamId(httpMessage);
    }

    public static int getAssociatedToStreamId(HttpMessage httpMessage) {
        return HttpHeaders.getIntHeader(httpMessage, Names.ASSOCIATED_TO_STREAM_ID, 0);
    }

    @Deprecated
    public static void setAssociatedToStreamID(HttpMessage httpMessage, int i) {
        setAssociatedToStreamId(httpMessage, i);
    }

    public static void setAssociatedToStreamId(HttpMessage httpMessage, int i) {
        HttpHeaders.setIntHeader(httpMessage, Names.ASSOCIATED_TO_STREAM_ID, i);
    }

    public static void removePriority(HttpMessage httpMessage) {
        httpMessage.removeHeader(Names.PRIORITY);
    }

    public static byte getPriority(HttpMessage httpMessage) {
        return (byte) HttpHeaders.getIntHeader(httpMessage, Names.PRIORITY, 0);
    }

    public static void setPriority(HttpMessage httpMessage, byte b) {
        HttpHeaders.setIntHeader(httpMessage, Names.PRIORITY, (int) b);
    }

    public static void removeUrl(HttpMessage httpMessage) {
        httpMessage.removeHeader(Names.URL);
    }

    public static String getUrl(HttpMessage httpMessage) {
        return httpMessage.getHeader(Names.URL);
    }

    public static void setUrl(HttpMessage httpMessage, String str) {
        httpMessage.setHeader(Names.URL, (Object) str);
    }

    public static void removeScheme(HttpMessage httpMessage) {
        httpMessage.removeHeader(Names.SCHEME);
    }

    public static String getScheme(HttpMessage httpMessage) {
        return httpMessage.getHeader(Names.SCHEME);
    }

    public static void setScheme(HttpMessage httpMessage, String str) {
        httpMessage.setHeader(Names.SCHEME, (Object) str);
    }
}
