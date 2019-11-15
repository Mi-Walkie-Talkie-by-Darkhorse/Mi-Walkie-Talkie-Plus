package org.apache.http.impl.auth;

import org.apache.http.Header;
import org.apache.http.HttpRequest;
import org.apache.http.auth.AuthenticationException;
import org.apache.http.auth.Credentials;
import org.apache.http.auth.MalformedChallengeException;

@Deprecated
public class DigestScheme extends RFC2617Scheme {
    public DigestScheme() {
        throw new RuntimeException("Stub!");
    }

    public void processChallenge(Header header) throws MalformedChallengeException {
        throw new RuntimeException("Stub!");
    }

    public boolean isComplete() {
        throw new RuntimeException("Stub!");
    }

    public String getSchemeName() {
        throw new RuntimeException("Stub!");
    }

    public boolean isConnectionBased() {
        throw new RuntimeException("Stub!");
    }

    public void overrideParamter(String str, String str2) {
        throw new RuntimeException("Stub!");
    }

    public Header authenticate(Credentials credentials, HttpRequest httpRequest) throws AuthenticationException {
        throw new RuntimeException("Stub!");
    }

    public static String createCnonce() {
        throw new RuntimeException("Stub!");
    }
}
