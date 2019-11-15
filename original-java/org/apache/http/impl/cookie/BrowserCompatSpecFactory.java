package org.apache.http.impl.cookie;

import org.apache.http.cookie.CookieSpec;
import org.apache.http.cookie.CookieSpecFactory;
import org.apache.http.params.HttpParams;

@Deprecated
public class BrowserCompatSpecFactory implements CookieSpecFactory {
    public BrowserCompatSpecFactory() {
        throw new RuntimeException("Stub!");
    }

    public CookieSpec newInstance(HttpParams httpParams) {
        throw new RuntimeException("Stub!");
    }
}
