package com.loopj.android.http;

import com.google.devtools.build.android.desugar.runtime.ThrowableExtension;
import java.io.IOException;
import java.net.Socket;
import java.security.KeyManagementException;
import java.security.KeyStore;
import java.security.KeyStoreException;
import java.security.NoSuchAlgorithmException;
import java.security.UnrecoverableKeyException;
import java.security.cert.CertificateException;
import java.security.cert.X509Certificate;
import javax.net.ssl.SSLContext;
import javax.net.ssl.TrustManager;
import javax.net.ssl.X509TrustManager;
import org.apache.http.conn.ssl.SSLSocketFactory;

/* compiled from: MySSLSocketFactory */
public class f extends SSLSocketFactory {
    SSLContext a = SSLContext.getInstance("TLS");

    public f(KeyStore keyStore) throws NoSuchAlgorithmException, KeyManagementException, KeyStoreException, UnrecoverableKeyException {
        super(keyStore);
        AnonymousClass1 r0 = new X509TrustManager() {
            public void checkClientTrusted(X509Certificate[] x509CertificateArr, String str) throws CertificateException {
            }

            public void checkServerTrusted(X509Certificate[] x509CertificateArr, String str) throws CertificateException {
            }

            public X509Certificate[] getAcceptedIssuers() {
                return null;
            }
        };
        this.a.init(null, new TrustManager[]{r0}, null);
    }

    public Socket createSocket(Socket socket, String str, int i, boolean z) throws IOException {
        return this.a.getSocketFactory().createSocket(socket, str, i, z);
    }

    public Socket createSocket() throws IOException {
        return this.a.getSocketFactory().createSocket();
    }

    public static KeyStore a() {
        Throwable th;
        KeyStore keyStore;
        try {
            keyStore = KeyStore.getInstance(KeyStore.getDefaultType());
            try {
                keyStore.load(null, null);
            } catch (Throwable th2) {
                th = th2;
                ThrowableExtension.printStackTrace(th);
                return keyStore;
            }
        } catch (Throwable th3) {
            Throwable th4 = th3;
            keyStore = null;
            th = th4;
            ThrowableExtension.printStackTrace(th);
            return keyStore;
        }
        return keyStore;
    }

    public static SSLSocketFactory b() {
        try {
            f fVar = new f(a());
            fVar.setHostnameVerifier(SSLSocketFactory.ALLOW_ALL_HOSTNAME_VERIFIER);
            return fVar;
        } catch (Throwable th) {
            ThrowableExtension.printStackTrace(th);
            return SSLSocketFactory.getSocketFactory();
        }
    }
}
