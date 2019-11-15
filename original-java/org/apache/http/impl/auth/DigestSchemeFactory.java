package org.apache.http.impl.auth;

import org.apache.http.auth.AuthScheme;
import org.apache.http.auth.AuthSchemeFactory;
import org.apache.http.params.HttpParams;

@Deprecated
public class DigestSchemeFactory implements AuthSchemeFactory {
    public DigestSchemeFactory() {
        throw new RuntimeException("Stub!");
    }

    public AuthScheme newInstance(HttpParams httpParams) {
        throw new RuntimeException("Stub!");
    }
}
