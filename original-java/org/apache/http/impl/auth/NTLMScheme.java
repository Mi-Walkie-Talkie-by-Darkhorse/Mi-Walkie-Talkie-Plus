package org.apache.http.impl.auth;

import org.apache.http.Header;
import org.apache.http.HttpRequest;
import org.apache.http.auth.AuthenticationException;
import org.apache.http.auth.Credentials;
import org.apache.http.auth.MalformedChallengeException;
import org.apache.http.util.CharArrayBuffer;

@Deprecated
public class NTLMScheme extends AuthSchemeBase {
    public NTLMScheme(NTLMEngine nTLMEngine) {
        throw new RuntimeException("Stub!");
    }

    public String getSchemeName() {
        throw new RuntimeException("Stub!");
    }

    public String getParameter(String str) {
        throw new RuntimeException("Stub!");
    }

    public String getRealm() {
        throw new RuntimeException("Stub!");
    }

    public boolean isConnectionBased() {
        throw new RuntimeException("Stub!");
    }

    /* access modifiers changed from: protected */
    public void parseChallenge(CharArrayBuffer charArrayBuffer, int i, int i2) throws MalformedChallengeException {
        throw new RuntimeException("Stub!");
    }

    public Header authenticate(Credentials credentials, HttpRequest httpRequest) throws AuthenticationException {
        throw new RuntimeException("Stub!");
    }

    public boolean isComplete() {
        throw new RuntimeException("Stub!");
    }
}
