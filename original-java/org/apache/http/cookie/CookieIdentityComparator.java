package org.apache.http.cookie;

import java.io.Serializable;
import java.util.Comparator;

@Deprecated
public class CookieIdentityComparator implements Serializable, Comparator<Cookie> {
    public CookieIdentityComparator() {
        throw new RuntimeException("Stub!");
    }

    public int compare(Cookie cookie, Cookie cookie2) {
        throw new RuntimeException("Stub!");
    }
}
