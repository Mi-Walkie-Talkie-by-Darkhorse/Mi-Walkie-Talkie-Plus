package org.apache.http.conn.params;

import java.net.InetAddress;
import org.apache.http.HttpHost;
import org.apache.http.conn.routing.HttpRoute;
import org.apache.http.params.HttpParams;

@Deprecated
public class ConnRouteParams implements ConnRoutePNames {
    public static final HttpHost NO_HOST = null;
    public static final HttpRoute NO_ROUTE = null;

    ConnRouteParams() {
        throw new RuntimeException("Stub!");
    }

    public static HttpHost getDefaultProxy(HttpParams httpParams) {
        throw new RuntimeException("Stub!");
    }

    public static void setDefaultProxy(HttpParams httpParams, HttpHost httpHost) {
        throw new RuntimeException("Stub!");
    }

    public static HttpRoute getForcedRoute(HttpParams httpParams) {
        throw new RuntimeException("Stub!");
    }

    public static void setForcedRoute(HttpParams httpParams, HttpRoute httpRoute) {
        throw new RuntimeException("Stub!");
    }

    public static InetAddress getLocalAddress(HttpParams httpParams) {
        throw new RuntimeException("Stub!");
    }

    public static void setLocalAddress(HttpParams httpParams, InetAddress inetAddress) {
        throw new RuntimeException("Stub!");
    }
}
