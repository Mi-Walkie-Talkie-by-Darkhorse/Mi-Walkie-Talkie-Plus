package org.apache.http.impl.cookie;

import java.util.Collection;
import org.apache.http.cookie.CookieAttributeHandler;
import org.apache.http.cookie.CookieSpec;

@Deprecated
public abstract class AbstractCookieSpec implements CookieSpec {
    public AbstractCookieSpec() {
        throw new RuntimeException("Stub!");
    }

    public void registerAttribHandler(String str, CookieAttributeHandler cookieAttributeHandler) {
        throw new RuntimeException("Stub!");
    }

    /* access modifiers changed from: protected */
    public CookieAttributeHandler findAttribHandler(String str) {
        throw new RuntimeException("Stub!");
    }

    /* access modifiers changed from: protected */
    public CookieAttributeHandler getAttribHandler(String str) {
        throw new RuntimeException("Stub!");
    }

    /* access modifiers changed from: protected */
    public Collection<CookieAttributeHandler> getAttribHandlers() {
        throw new RuntimeException("Stub!");
    }
}
