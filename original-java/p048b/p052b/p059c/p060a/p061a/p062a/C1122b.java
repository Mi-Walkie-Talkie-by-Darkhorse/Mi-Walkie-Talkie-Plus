package p048b.p052b.p059c.p060a.p061a.p062a;

import java.io.IOException;
import java.net.InetAddress;
import java.net.Socket;
import java.net.UnknownHostException;
import java.security.KeyManagementException;
import java.security.NoSuchAlgorithmException;
import java.security.SecureRandom;
import javax.net.ssl.SSLContext;
import javax.net.ssl.SSLSocket;
import javax.net.ssl.SSLSocketFactory;
import javax.net.ssl.X509TrustManager;
import org.apache.http.conn.ssl.BrowserCompatHostnameVerifier;
import org.apache.http.conn.ssl.StrictHostnameVerifier;
import p048b.p052b.p059c.p060a.p061a.p062a.p064e.C1127a;
import p048b.p052b.p059c.p060a.p061a.p062a.p064e.C1129c;

/* renamed from: b.b.c.a.a.a.b */
/* loaded from: classes2.dex */
public class C1122b extends SSLSocketFactory {

    /* renamed from: g */
    private static final String f5294g;

    /* renamed from: a */
    private SSLContext f5295a;

    /* renamed from: b */
    private SSLSocket f5296b = null;

    /* renamed from: c */
    private String[] f5297c;

    /* renamed from: d */
    private String[] f5298d;

    /* renamed from: e */
    private String[] f5299e;

    /* renamed from: f */
    private String[] f5300f;

    static {
        new BrowserCompatHostnameVerifier();
        new StrictHostnameVerifier();
        f5294g = C1122b.class.getSimpleName();
    }

    public C1122b(X509TrustManager x509TrustManager) throws NoSuchAlgorithmException, KeyManagementException, IllegalArgumentException {
        this.f5295a = null;
        this.f5295a = AbstractC1121a.m21151f();
        m21147b(x509TrustManager);
        this.f5295a.init(null, new X509TrustManager[]{x509TrustManager}, new SecureRandom());
    }

    /* renamed from: a */
    private void m21148a(Socket socket) {
        boolean z;
        boolean z2 = true;
        if (C1127a.m21129a(this.f5300f)) {
            z = false;
        } else {
            C1129c.m21124c(f5294g, "set protocols");
            AbstractC1121a.m21152e((SSLSocket) socket, this.f5300f);
            z = true;
        }
        if (C1127a.m21129a(this.f5299e) && C1127a.m21129a(this.f5298d)) {
            z2 = false;
        } else {
            C1129c.m21124c(f5294g, "set white cipher or black cipher");
            SSLSocket sSLSocket = (SSLSocket) socket;
            AbstractC1121a.m21153d(sSLSocket);
            if (!C1127a.m21129a(this.f5299e)) {
                AbstractC1121a.m21149h(sSLSocket, this.f5299e);
            } else {
                AbstractC1121a.m21155b(sSLSocket, this.f5298d);
            }
        }
        if (!z) {
            C1129c.m21124c(f5294g, "set default protocols");
            AbstractC1121a.m21153d((SSLSocket) socket);
        }
        if (z2) {
            return;
        }
        C1129c.m21124c(f5294g, "set default cipher suites");
        AbstractC1121a.m21154c((SSLSocket) socket);
    }

    /* renamed from: b */
    public void m21147b(X509TrustManager x509TrustManager) {
    }

    @Override // javax.net.SocketFactory
    public Socket createSocket(String str, int i) throws IOException {
        C1129c.m21124c(f5294g, "createSocket: host , port");
        Socket createSocket = this.f5295a.getSocketFactory().createSocket(str, i);
        if (createSocket instanceof SSLSocket) {
            m21148a(createSocket);
            SSLSocket sSLSocket = (SSLSocket) createSocket;
            this.f5296b = sSLSocket;
            this.f5297c = (String[]) sSLSocket.getEnabledCipherSuites().clone();
        }
        return createSocket;
    }

    @Override // javax.net.ssl.SSLSocketFactory
    public String[] getDefaultCipherSuites() {
        return new String[0];
    }

    @Override // javax.net.ssl.SSLSocketFactory
    public String[] getSupportedCipherSuites() {
        String[] strArr = this.f5297c;
        return strArr != null ? strArr : new String[0];
    }

    @Override // javax.net.SocketFactory
    public Socket createSocket(InetAddress inetAddress, int i) throws IOException {
        return createSocket(inetAddress.getHostAddress(), i);
    }

    @Override // javax.net.SocketFactory
    public Socket createSocket(String str, int i, InetAddress inetAddress, int i2) throws IOException, UnknownHostException {
        return createSocket(str, i);
    }

    @Override // javax.net.SocketFactory
    public Socket createSocket(InetAddress inetAddress, int i, InetAddress inetAddress2, int i2) throws IOException {
        return createSocket(inetAddress.getHostAddress(), i);
    }

    @Override // javax.net.ssl.SSLSocketFactory
    public Socket createSocket(Socket socket, String str, int i, boolean z) throws IOException {
        C1129c.m21124c(f5294g, "createSocket");
        Socket createSocket = this.f5295a.getSocketFactory().createSocket(socket, str, i, z);
        if (createSocket instanceof SSLSocket) {
            m21148a(createSocket);
            SSLSocket sSLSocket = (SSLSocket) createSocket;
            this.f5296b = sSLSocket;
            this.f5297c = (String[]) sSLSocket.getEnabledCipherSuites().clone();
        }
        return createSocket;
    }
}
