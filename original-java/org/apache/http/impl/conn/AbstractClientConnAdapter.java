package org.apache.http.impl.conn;

import java.io.IOException;
import java.io.InterruptedIOException;
import java.net.InetAddress;
import java.util.concurrent.TimeUnit;
import javax.net.ssl.SSLSession;
import org.apache.http.HttpConnectionMetrics;
import org.apache.http.HttpEntityEnclosingRequest;
import org.apache.http.HttpException;
import org.apache.http.HttpRequest;
import org.apache.http.HttpResponse;
import org.apache.http.conn.ClientConnectionManager;
import org.apache.http.conn.ManagedClientConnection;
import org.apache.http.conn.OperatedClientConnection;

@Deprecated
public abstract class AbstractClientConnAdapter implements ManagedClientConnection {
    protected AbstractClientConnAdapter(ClientConnectionManager clientConnectionManager, OperatedClientConnection operatedClientConnection) {
        throw new RuntimeException("Stub!");
    }

    /* access modifiers changed from: protected */
    public void detach() {
        throw new RuntimeException("Stub!");
    }

    /* access modifiers changed from: protected */
    public OperatedClientConnection getWrappedConnection() {
        throw new RuntimeException("Stub!");
    }

    /* access modifiers changed from: protected */
    public ClientConnectionManager getManager() {
        throw new RuntimeException("Stub!");
    }

    /* access modifiers changed from: protected */
    public final void assertNotAborted() throws InterruptedIOException {
        throw new RuntimeException("Stub!");
    }

    /* access modifiers changed from: protected */
    public final void assertValid(OperatedClientConnection operatedClientConnection) {
        throw new RuntimeException("Stub!");
    }

    public boolean isOpen() {
        throw new RuntimeException("Stub!");
    }

    public boolean isStale() {
        throw new RuntimeException("Stub!");
    }

    public void setSocketTimeout(int i) {
        throw new RuntimeException("Stub!");
    }

    public int getSocketTimeout() {
        throw new RuntimeException("Stub!");
    }

    public HttpConnectionMetrics getMetrics() {
        throw new RuntimeException("Stub!");
    }

    public void flush() throws IOException {
        throw new RuntimeException("Stub!");
    }

    public boolean isResponseAvailable(int i) throws IOException {
        throw new RuntimeException("Stub!");
    }

    public void receiveResponseEntity(HttpResponse httpResponse) throws HttpException, IOException {
        throw new RuntimeException("Stub!");
    }

    public HttpResponse receiveResponseHeader() throws HttpException, IOException {
        throw new RuntimeException("Stub!");
    }

    public void sendRequestEntity(HttpEntityEnclosingRequest httpEntityEnclosingRequest) throws HttpException, IOException {
        throw new RuntimeException("Stub!");
    }

    public void sendRequestHeader(HttpRequest httpRequest) throws HttpException, IOException {
        throw new RuntimeException("Stub!");
    }

    public InetAddress getLocalAddress() {
        throw new RuntimeException("Stub!");
    }

    public int getLocalPort() {
        throw new RuntimeException("Stub!");
    }

    public InetAddress getRemoteAddress() {
        throw new RuntimeException("Stub!");
    }

    public int getRemotePort() {
        throw new RuntimeException("Stub!");
    }

    public boolean isSecure() {
        throw new RuntimeException("Stub!");
    }

    public SSLSession getSSLSession() {
        throw new RuntimeException("Stub!");
    }

    public void markReusable() {
        throw new RuntimeException("Stub!");
    }

    public void unmarkReusable() {
        throw new RuntimeException("Stub!");
    }

    public boolean isMarkedReusable() {
        throw new RuntimeException("Stub!");
    }

    public void setIdleDuration(long j, TimeUnit timeUnit) {
        throw new RuntimeException("Stub!");
    }

    public void releaseConnection() {
        throw new RuntimeException("Stub!");
    }

    public void abortConnection() {
        throw new RuntimeException("Stub!");
    }
}
