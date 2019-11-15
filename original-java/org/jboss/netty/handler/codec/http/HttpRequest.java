package org.jboss.netty.handler.codec.http;

public interface HttpRequest extends HttpMessage {
    HttpMethod getMethod();

    String getUri();

    void setMethod(HttpMethod httpMethod);

    void setUri(String str);
}
