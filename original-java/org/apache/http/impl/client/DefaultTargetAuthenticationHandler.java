package org.apache.http.impl.client;

import java.util.Map;
import org.apache.http.Header;
import org.apache.http.HttpResponse;
import org.apache.http.auth.MalformedChallengeException;
import org.apache.http.protocol.HttpContext;

@Deprecated
public class DefaultTargetAuthenticationHandler extends AbstractAuthenticationHandler {
    public DefaultTargetAuthenticationHandler() {
        throw new RuntimeException("Stub!");
    }

    public boolean isAuthenticationRequested(HttpResponse httpResponse, HttpContext httpContext) {
        throw new RuntimeException("Stub!");
    }

    public Map<String, Header> getChallenges(HttpResponse httpResponse, HttpContext httpContext) throws MalformedChallengeException {
        throw new RuntimeException("Stub!");
    }
}
