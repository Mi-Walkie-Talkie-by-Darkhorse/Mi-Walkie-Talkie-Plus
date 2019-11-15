package org.apache.http.conn.routing;

import java.net.InetAddress;
import org.apache.http.HttpHost;
import org.apache.http.conn.routing.RouteInfo.LayerType;
import org.apache.http.conn.routing.RouteInfo.TunnelType;

@Deprecated
public final class HttpRoute implements RouteInfo {
    public HttpRoute(HttpHost httpHost, InetAddress inetAddress, HttpHost[] httpHostArr, boolean z, TunnelType tunnelType, LayerType layerType) {
        throw new RuntimeException("Stub!");
    }

    public HttpRoute(HttpHost httpHost, InetAddress inetAddress, HttpHost httpHost2, boolean z, TunnelType tunnelType, LayerType layerType) {
        throw new RuntimeException("Stub!");
    }

    public HttpRoute(HttpHost httpHost, InetAddress inetAddress, boolean z) {
        throw new RuntimeException("Stub!");
    }

    public HttpRoute(HttpHost httpHost) {
        throw new RuntimeException("Stub!");
    }

    public HttpRoute(HttpHost httpHost, InetAddress inetAddress, HttpHost httpHost2, boolean z) {
        throw new RuntimeException("Stub!");
    }

    public final HttpHost getTargetHost() {
        throw new RuntimeException("Stub!");
    }

    public final InetAddress getLocalAddress() {
        throw new RuntimeException("Stub!");
    }

    public final int getHopCount() {
        throw new RuntimeException("Stub!");
    }

    public final HttpHost getHopTarget(int i) {
        throw new RuntimeException("Stub!");
    }

    public final HttpHost getProxyHost() {
        throw new RuntimeException("Stub!");
    }

    public final TunnelType getTunnelType() {
        throw new RuntimeException("Stub!");
    }

    public final boolean isTunnelled() {
        throw new RuntimeException("Stub!");
    }

    public final LayerType getLayerType() {
        throw new RuntimeException("Stub!");
    }

    public final boolean isLayered() {
        throw new RuntimeException("Stub!");
    }

    public final boolean isSecure() {
        throw new RuntimeException("Stub!");
    }

    public final boolean equals(Object obj) {
        throw new RuntimeException("Stub!");
    }

    public final int hashCode() {
        throw new RuntimeException("Stub!");
    }

    public final String toString() {
        throw new RuntimeException("Stub!");
    }

    public Object clone() throws CloneNotSupportedException {
        throw new RuntimeException("Stub!");
    }
}
