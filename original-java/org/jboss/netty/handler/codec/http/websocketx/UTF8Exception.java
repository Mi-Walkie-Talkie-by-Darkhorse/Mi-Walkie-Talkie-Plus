package org.jboss.netty.handler.codec.http.websocketx;

final class UTF8Exception extends RuntimeException {
    private static final long serialVersionUID = 1;

    UTF8Exception(String str) {
        super(str);
    }
}
