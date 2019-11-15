package com.sina.weibo.sdk.net;

import java.io.IOException;
import java.net.Socket;
import java.net.UnknownHostException;
import java.security.KeyManagementException;
import java.security.KeyStore;
import java.security.KeyStoreException;
import java.security.NoSuchAlgorithmException;
import java.security.UnrecoverableKeyException;
import java.security.cert.CertificateException;
import java.security.cert.X509Certificate;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import javax.net.ssl.SSLContext;
import javax.net.ssl.TrustManager;
import javax.net.ssl.TrustManagerFactory;
import javax.net.ssl.X509TrustManager;
import org.apache.http.conn.ssl.SSLSocketFactory;

/* compiled from: SSLSocketFactoryEx */
public class e extends SSLSocketFactory {
    private static final String b = e.class.getName();
    SSLContext a = SSLContext.getInstance("TLS");

    /* compiled from: SSLSocketFactoryEx */
    public static class a implements X509TrustManager {
        protected ArrayList<X509TrustManager> a = new ArrayList<>();

        protected a(KeyStore... keyStoreArr) {
            TrustManager[] trustManagers;
            ArrayList arrayList = new ArrayList();
            try {
                TrustManagerFactory instance = TrustManagerFactory.getInstance(TrustManagerFactory.getDefaultAlgorithm());
                instance.init(null);
                arrayList.add(instance);
                for (KeyStore keyStore : keyStoreArr) {
                    TrustManagerFactory instance2 = TrustManagerFactory.getInstance(TrustManagerFactory.getDefaultAlgorithm());
                    instance2.init(keyStore);
                    arrayList.add(instance2);
                }
                Iterator it = arrayList.iterator();
                while (it.hasNext()) {
                    for (TrustManager trustManager : ((TrustManagerFactory) it.next()).getTrustManagers()) {
                        if (trustManager instanceof X509TrustManager) {
                            this.a.add((X509TrustManager) trustManager);
                        }
                    }
                }
                if (this.a.size() == 0) {
                    throw new RuntimeException("Couldn't find any X509TrustManagers");
                }
            } catch (Exception e) {
                throw new RuntimeException(e);
            }
        }

        public void checkClientTrusted(X509Certificate[] x509CertificateArr, String str) throws CertificateException {
            ((X509TrustManager) this.a.get(0)).checkClientTrusted(x509CertificateArr, str);
        }

        public void checkServerTrusted(X509Certificate[] x509CertificateArr, String str) throws CertificateException {
            Iterator it = this.a.iterator();
            while (it.hasNext()) {
                try {
                    ((X509TrustManager) it.next()).checkServerTrusted(x509CertificateArr, str);
                    return;
                } catch (CertificateException e) {
                }
            }
            throw new CertificateException();
        }

        public X509Certificate[] getAcceptedIssuers() {
            ArrayList arrayList = new ArrayList();
            Iterator it = this.a.iterator();
            while (it.hasNext()) {
                arrayList.addAll(Arrays.asList(((X509TrustManager) it.next()).getAcceptedIssuers()));
            }
            return (X509Certificate[]) arrayList.toArray(new X509Certificate[arrayList.size()]);
        }
    }

    public e(KeyStore keyStore) throws NoSuchAlgorithmException, KeyManagementException, KeyStoreException, UnrecoverableKeyException {
        super(keyStore);
        this.a.init(null, new TrustManager[]{new a(keyStore)}, null);
    }

    public Socket createSocket(Socket socket, String str, int i, boolean z) throws IOException, UnknownHostException {
        return this.a.getSocketFactory().createSocket(socket, str, i, z);
    }

    public Socket createSocket() throws IOException {
        return this.a.getSocketFactory().createSocket();
    }
}
