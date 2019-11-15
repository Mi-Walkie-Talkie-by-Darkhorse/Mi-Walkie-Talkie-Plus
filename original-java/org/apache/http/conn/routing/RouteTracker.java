package org.apache.http.conn.routing;

import java.net.InetAddress;
import org.apache.http.HttpHost;
import org.apache.http.conn.routing.RouteInfo.LayerType;
import org.apache.http.conn.routing.RouteInfo.TunnelType;

@Deprecated
public final class RouteTracker implements RouteInfo {
    public RouteTracker(HttpHost httpHost, InetAddress inetAddress) {
        throw new RuntimeException("Stub!");
    }

    public RouteTracker(HttpRoute httpRoute) {
        throw new RuntimeException("Stub!");
    }

    public final void connectTarget(boolean z) {
        throw new RuntimeException("Stub!");
    }

    public final void connectProxy(HttpHost httpHost, boolean z) {
        throw new RuntimeException("Stub!");
    }

    public final void tunnelTarget(boolean z) {
        throw new RuntimeException("Stub!");
    }

    public final void tunnelProxy(HttpHost httpHost, boolean z) {
        throw new RuntimeException("Stub!");
    }

    public final void layerProtocol(boolean z) {
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

    public final boolean isConnected() {
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

    public final HttpRoute toRoute() {
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
