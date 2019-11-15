package org.jboss.netty.handler.codec.http;

public interface HttpResponse extends HttpMessage {
    HttpResponseStatus getStatus();

    void setStatus(HttpResponseStatus httpResponseStatus);
}
