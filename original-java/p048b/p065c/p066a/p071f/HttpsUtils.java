package p048b.p065c.p066a.p071f;

import java.io.IOException;
import java.io.InputStream;
import java.security.KeyManagementException;
import java.security.KeyStore;
import java.security.NoSuchAlgorithmException;
import java.security.cert.CertificateException;
import java.security.cert.CertificateFactory;
import java.security.cert.X509Certificate;
import javax.net.ssl.HostnameVerifier;
import javax.net.ssl.KeyManager;
import javax.net.ssl.KeyManagerFactory;
import javax.net.ssl.SSLContext;
import javax.net.ssl.SSLSession;
import javax.net.ssl.SSLSocketFactory;
import javax.net.ssl.TrustManager;
import javax.net.ssl.TrustManagerFactory;
import javax.net.ssl.X509TrustManager;
import p048b.p065c.p066a.p072g.OkLogger;

/* renamed from: b.c.a.f.a */
/* loaded from: classes2.dex */
public class HttpsUtils {

    /* renamed from: a */
    public static X509TrustManager f5352a = new C1137a();

    /* renamed from: b */
    public static HostnameVerifier f5353b = new C1138b();

    /* compiled from: HttpsUtils.java */
    /* renamed from: b.c.a.f.a$a */
    /* loaded from: classes2.dex */
    static class C1137a implements X509TrustManager {
        C1137a() {
        }

        @Override // javax.net.ssl.X509TrustManager
        public void checkClientTrusted(X509Certificate[] x509CertificateArr, String str) throws CertificateException {
        }

        @Override // javax.net.ssl.X509TrustManager
        public void checkServerTrusted(X509Certificate[] x509CertificateArr, String str) throws CertificateException {
        }

        @Override // javax.net.ssl.X509TrustManager
        public X509Certificate[] getAcceptedIssuers() {
            return new X509Certificate[0];
        }
    }

    /* compiled from: HttpsUtils.java */
    /* renamed from: b.c.a.f.a$b */
    /* loaded from: classes2.dex */
    static class C1138b implements HostnameVerifier {
        C1138b() {
        }

        @Override // javax.net.ssl.HostnameVerifier
        public boolean verify(String str, SSLSession sSLSession) {
            return true;
        }
    }

    /* compiled from: HttpsUtils.java */
    /* renamed from: b.c.a.f.a$c */
    /* loaded from: classes2.dex */
    public static class C1139c {

        /* renamed from: a */
        public SSLSocketFactory f5354a;

        /* renamed from: b */
        public X509TrustManager f5355b;
    }

    /* renamed from: a */
    private static X509TrustManager m21071a(TrustManager[] trustManagerArr) {
        for (TrustManager trustManager : trustManagerArr) {
            if (trustManager instanceof X509TrustManager) {
                return (X509TrustManager) trustManager;
            }
        }
        return null;
    }

    /* renamed from: b */
    public static C1139c m21070b() {
        return m21069c(null, null, null, new InputStream[0]);
    }

    /* renamed from: c */
    private static C1139c m21069c(X509TrustManager x509TrustManager, InputStream inputStream, String str, InputStream... inputStreamArr) {
        C1139c c1139c = new C1139c();
        try {
            KeyManager[] m21068d = m21068d(inputStream, str);
            TrustManager[] m21067e = m21067e(inputStreamArr);
            if (x509TrustManager == null) {
                if (m21067e != null) {
                    x509TrustManager = m21071a(m21067e);
                } else {
                    x509TrustManager = f5352a;
                }
            }
            SSLContext sSLContext = SSLContext.getInstance("TLS");
            sSLContext.init(m21068d, new TrustManager[]{x509TrustManager}, null);
            c1139c.f5354a = sSLContext.getSocketFactory();
            c1139c.f5355b = x509TrustManager;
            return c1139c;
        } catch (KeyManagementException e) {
            throw new AssertionError(e);
        } catch (NoSuchAlgorithmException e2) {
            throw new AssertionError(e2);
        }
    }

    /* renamed from: d */
    private static KeyManager[] m21068d(InputStream inputStream, String str) {
        if (inputStream != null && str != null) {
            try {
                KeyStore keyStore = KeyStore.getInstance("BKS");
                keyStore.load(inputStream, str.toCharArray());
                KeyManagerFactory keyManagerFactory = KeyManagerFactory.getInstance(KeyManagerFactory.getDefaultAlgorithm());
                keyManagerFactory.init(keyStore, str.toCharArray());
                return keyManagerFactory.getKeyManagers();
            } catch (Exception e) {
                OkLogger.m21049a(e);
            }
        }
        return null;
    }

    /* renamed from: e */
    private static TrustManager[] m21067e(InputStream... inputStreamArr) {
        if (inputStreamArr != null && inputStreamArr.length > 0) {
            try {
                CertificateFactory certificateFactory = CertificateFactory.getInstance("X.509");
                KeyStore keyStore = KeyStore.getInstance(KeyStore.getDefaultType());
                keyStore.load(null);
                int length = inputStreamArr.length;
                int i = 0;
                int i2 = 0;
                while (i < length) {
                    InputStream inputStream = inputStreamArr[i];
                    int i3 = i2 + 1;
                    keyStore.setCertificateEntry(Integer.toString(i2), certificateFactory.generateCertificate(inputStream));
                    if (inputStream != null) {
                        try {
                            inputStream.close();
                        } catch (IOException e) {
                            OkLogger.m21049a(e);
                        }
                    }
                    i++;
                    i2 = i3;
                }
                TrustManagerFactory trustManagerFactory = TrustManagerFactory.getInstance(TrustManagerFactory.getDefaultAlgorithm());
                trustManagerFactory.init(keyStore);
                return trustManagerFactory.getTrustManagers();
            } catch (Exception e2) {
                OkLogger.m21049a(e2);
            }
        }
        return null;
    }
}
