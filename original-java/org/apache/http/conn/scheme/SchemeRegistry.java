package org.apache.http.conn.scheme;

import java.util.List;
import java.util.Map;
import org.apache.http.HttpHost;

@Deprecated
public final class SchemeRegistry {
    public SchemeRegistry() {
        throw new RuntimeException("Stub!");
    }

    public final synchronized Scheme getScheme(String str) {
        throw new RuntimeException("Stub!");
    }

    public final synchronized Scheme getScheme(HttpHost httpHost) {
        throw new RuntimeException("Stub!");
    }

    public final synchronized Scheme get(String str) {
        throw new RuntimeException("Stub!");
    }

    public final synchronized Scheme register(Scheme scheme) {
        throw new RuntimeException("Stub!");
    }

    public final synchronized Scheme unregister(String str) {
        throw new RuntimeException("Stub!");
    }

    public final synchronized List<String> getSchemeNames() {
        throw new RuntimeException("Stub!");
    }

    public synchronized void setItems(Map<String, Scheme> map) {
        throw new RuntimeException("Stub!");
    }
}
