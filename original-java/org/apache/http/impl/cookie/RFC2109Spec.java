package org.apache.http.impl.cookie;

import java.util.List;
import org.apache.http.Header;
import org.apache.http.cookie.Cookie;
import org.apache.http.cookie.CookieOrigin;
import org.apache.http.cookie.MalformedCookieException;
import org.apache.http.util.CharArrayBuffer;

@Deprecated
public class RFC2109Spec extends CookieSpecBase {
    public RFC2109Spec(String[] strArr, boolean z) {
        throw new RuntimeException("Stub!");
    }

    public RFC2109Spec() {
        throw new RuntimeException("Stub!");
    }

    public List<Cookie> parse(Header header, CookieOrigin cookieOrigin) throws MalformedCookieException {
        throw new RuntimeException("Stub!");
    }

    public void validate(Cookie cookie, CookieOrigin cookieOrigin) throws MalformedCookieException {
        throw new RuntimeException("Stub!");
    }

    public List<Header> formatCookies(List<Cookie> list) {
        throw new RuntimeException("Stub!");
    }

    /* access modifiers changed from: protected */
    public void formatParamAsVer(CharArrayBuffer charArrayBuffer, String str, String str2, int i) {
        throw new RuntimeException("Stub!");
    }

    /* access modifiers changed from: protected */
    public void formatCookieAsVer(CharArrayBuffer charArrayBuffer, Cookie cookie, int i) {
        throw new RuntimeException("Stub!");
    }

    public int getVersion() {
        throw new RuntimeException("Stub!");
    }

    public Header getVersionHeader() {
        throw new RuntimeException("Stub!");
    }
}
