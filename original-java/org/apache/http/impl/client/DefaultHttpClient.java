package org.apache.http.impl.client;

import org.apache.http.ConnectionReuseStrategy;
import org.apache.http.auth.AuthSchemeRegistry;
import org.apache.http.client.AuthenticationHandler;
import org.apache.http.client.CookieStore;
import org.apache.http.client.CredentialsProvider;
import org.apache.http.client.HttpRequestRetryHandler;
import org.apache.http.client.RedirectHandler;
import org.apache.http.client.UserTokenHandler;
import org.apache.http.conn.ClientConnectionManager;
import org.apache.http.conn.ConnectionKeepAliveStrategy;
import org.apache.http.conn.routing.HttpRoutePlanner;
import org.apache.http.cookie.CookieSpecRegistry;
import org.apache.http.params.HttpParams;
import org.apache.http.protocol.BasicHttpProcessor;
import org.apache.http.protocol.HttpContext;
import org.apache.http.protocol.HttpRequestExecutor;

@Deprecated
public class DefaultHttpClient extends AbstractHttpClient {
    public DefaultHttpClient(ClientConnectionManager clientConnectionManager, HttpParams httpParams) {
        super(null, null);
        throw new RuntimeException("Stub!");
    }

    public DefaultHttpClient(HttpParams httpParams) {
        super(null, null);
        throw new RuntimeException("Stub!");
    }

    public DefaultHttpClient() {
        super(null, null);
        throw new RuntimeException("Stub!");
    }

    /* access modifiers changed from: protected */
    public HttpParams createHttpParams() {
        throw new RuntimeException("Stub!");
    }

    /* access modifiers changed from: protected */
    public HttpRequestExecutor createRequestExecutor() {
        throw new RuntimeException("Stub!");
    }

    /* access modifiers changed from: protected */
    public ClientConnectionManager createClientConnectionManager() {
        throw new RuntimeException("Stub!");
    }

    /* access modifiers changed from: protected */
    public HttpContext createHttpContext() {
        throw new RuntimeException("Stub!");
    }

    /* access modifiers changed from: protected */
    public ConnectionReuseStrategy createConnectionReuseStrategy() {
        throw new RuntimeException("Stub!");
    }

    /* access modifiers changed from: protected */
    public ConnectionKeepAliveStrategy createConnectionKeepAliveStrategy() {
        throw new RuntimeException("Stub!");
    }

    /* access modifiers changed from: protected */
    public AuthSchemeRegistry createAuthSchemeRegistry() {
        throw new RuntimeException("Stub!");
    }

    /* access modifiers changed from: protected */
    public CookieSpecRegistry createCookieSpecRegistry() {
        throw new RuntimeException("Stub!");
    }

    /* access modifiers changed from: protected */
    public BasicHttpProcessor createHttpProcessor() {
        throw new RuntimeException("Stub!");
    }

    /* access modifiers changed from: protected */
    public HttpRequestRetryHandler createHttpRequestRetryHandler() {
        throw new RuntimeException("Stub!");
    }

    /* access modifiers changed from: protected */
    public RedirectHandler createRedirectHandler() {
        throw new RuntimeException("Stub!");
    }

    /* access modifiers changed from: protected */
    public AuthenticationHandler createTargetAuthenticationHandler() {
        throw new RuntimeException("Stub!");
    }

    /* access modifiers changed from: protected */
    public AuthenticationHandler createProxyAuthenticationHandler() {
        throw new RuntimeException("Stub!");
    }

    /* access modifiers changed from: protected */
    public CookieStore createCookieStore() {
        throw new RuntimeException("Stub!");
    }

    /* access modifiers changed from: protected */
    public CredentialsProvider createCredentialsProvider() {
        throw new RuntimeException("Stub!");
    }

    /* access modifiers changed from: protected */
    public HttpRoutePlanner createHttpRoutePlanner() {
        throw new RuntimeException("Stub!");
    }

    /* access modifiers changed from: protected */
    public UserTokenHandler createUserTokenHandler() {
        throw new RuntimeException("Stub!");
    }
}
