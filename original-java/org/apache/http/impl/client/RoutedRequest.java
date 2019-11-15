package org.apache.http.impl.client;

import org.apache.http.conn.routing.HttpRoute;

@Deprecated
public class RoutedRequest {
    protected final RequestWrapper request;
    protected final HttpRoute route;

    public RoutedRequest(RequestWrapper requestWrapper, HttpRoute httpRoute) {
        throw new RuntimeException("Stub!");
    }

    public final RequestWrapper getRequest() {
        throw new RuntimeException("Stub!");
    }

    public final HttpRoute getRoute() {
        throw new RuntimeException("Stub!");
    }
}
