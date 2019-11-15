package org.apache.http.auth;

@Deprecated
public class AuthScope {
    public static final AuthScope ANY = null;
    public static final String ANY_HOST = null;
    public static final int ANY_PORT = -1;
    public static final String ANY_REALM = null;
    public static final String ANY_SCHEME = null;

    public AuthScope(String str, int i, String str2, String str3) {
        throw new RuntimeException("Stub!");
    }

    public AuthScope(String str, int i, String str2) {
        throw new RuntimeException("Stub!");
    }

    public AuthScope(String str, int i) {
        throw new RuntimeException("Stub!");
    }

    public AuthScope(AuthScope authScope) {
        throw new RuntimeException("Stub!");
    }

    public String getHost() {
        throw new RuntimeException("Stub!");
    }

    public int getPort() {
        throw new RuntimeException("Stub!");
    }

    public String getRealm() {
        throw new RuntimeException("Stub!");
    }

    public String getScheme() {
        throw new RuntimeException("Stub!");
    }

    public int match(AuthScope authScope) {
        throw new RuntimeException("Stub!");
    }

    public boolean equals(Object obj) {
        throw new RuntimeException("Stub!");
    }

    public String toString() {
        throw new RuntimeException("Stub!");
    }

    public int hashCode() {
        throw new RuntimeException("Stub!");
    }
}
