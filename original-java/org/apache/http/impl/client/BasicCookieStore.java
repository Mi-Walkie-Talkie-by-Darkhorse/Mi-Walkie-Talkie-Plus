package org.apache.http.impl.client;

import java.util.Date;
import java.util.List;
import org.apache.http.client.CookieStore;
import org.apache.http.cookie.Cookie;

@Deprecated
public class BasicCookieStore implements CookieStore {
    public BasicCookieStore() {
        throw new RuntimeException("Stub!");
    }

    public synchronized void addCookie(Cookie cookie) {
        throw new RuntimeException("Stub!");
    }

    public synchronized void addCookies(Cookie[] cookieArr) {
        throw new RuntimeException("Stub!");
    }

    public synchronized List<Cookie> getCookies() {
        throw new RuntimeException("Stub!");
    }

    public synchronized boolean clearExpired(Date date) {
        throw new RuntimeException("Stub!");
    }

    public String toString() {
        throw new RuntimeException("Stub!");
    }

    public synchronized void clear() {
        throw new RuntimeException("Stub!");
    }
}
