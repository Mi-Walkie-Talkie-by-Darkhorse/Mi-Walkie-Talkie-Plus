package p048b.p052b.p059c.p060a.p061a.p062a;

import java.io.IOException;
import java.io.InputStream;
import java.security.KeyStore;
import java.security.KeyStoreException;
import java.security.NoSuchAlgorithmException;
import java.security.cert.CertificateException;
import java.security.cert.X509Certificate;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import javax.net.ssl.TrustManager;
import javax.net.ssl.TrustManagerFactory;
import javax.net.ssl.X509TrustManager;
import p048b.p052b.p059c.p060a.p061a.p062a.p064e.AbstractC1128b;
import p048b.p052b.p059c.p060a.p061a.p062a.p064e.C1129c;

/* renamed from: b.b.c.a.a.a.c */
/* loaded from: classes2.dex */
public class C1123c implements X509TrustManager {

    /* renamed from: b */
    private static final String f5301b = C1123c.class.getSimpleName();

    /* renamed from: a */
    protected List<X509TrustManager> f5302a = new ArrayList();

    public C1123c(InputStream inputStream, String str) throws IllegalArgumentException {
        m21146a(inputStream, str);
    }

    /* renamed from: a */
    private void m21146a(InputStream inputStream, String str) {
        if (inputStream != null) {
            try {
                if (str != null) {
                    try {
                        TrustManagerFactory trustManagerFactory = TrustManagerFactory.getInstance("X509");
                        KeyStore keyStore = KeyStore.getInstance("bks");
                        keyStore.load(inputStream, str.toCharArray());
                        trustManagerFactory.init(keyStore);
                        TrustManager[] trustManagers = trustManagerFactory.getTrustManagers();
                        for (int i = 0; i < trustManagers.length; i++) {
                            if (trustManagers[i] instanceof X509TrustManager) {
                                this.f5302a.add((X509TrustManager) trustManagers[i]);
                            }
                        }
                    } catch (IOException | KeyStoreException | NoSuchAlgorithmException | CertificateException e) {
                        String str2 = f5301b;
                        C1129c.m21123d(str2, "loadInputStream: exception : " + e.getMessage());
                    }
                    return;
                }
            } finally {
                AbstractC1128b.m21127b(inputStream);
            }
        }
        throw new IllegalArgumentException("inputstream or trustPwd is null");
    }

    /* renamed from: b */
    public void m21145b(X509Certificate[] x509CertificateArr) {
    }

    @Override // javax.net.ssl.X509TrustManager
    public void checkClientTrusted(X509Certificate[] x509CertificateArr, String str) throws CertificateException {
        C1129c.m21124c(f5301b, "checkClientTrusted: ");
        for (X509TrustManager x509TrustManager : this.f5302a) {
            try {
                x509TrustManager.checkServerTrusted(x509CertificateArr, str);
                return;
            } catch (CertificateException e) {
                String str2 = f5301b;
                C1129c.m21123d(str2, "checkServerTrusted CertificateException" + e.getMessage());
            }
        }
        throw new CertificateException("checkServerTrusted CertificateException");
    }

    @Override // javax.net.ssl.X509TrustManager
    public void checkServerTrusted(X509Certificate[] x509CertificateArr, String str) throws CertificateException {
        m21145b(x509CertificateArr);
        C1129c.m21124c(f5301b, "checkServerTrusted begin ,server ca chain size is : " + x509CertificateArr.length);
        for (X509Certificate x509Certificate : x509CertificateArr) {
            C1129c.m21125b(f5301b, "server ca chain: getSubjectDN is :" + x509Certificate.getSubjectDN() + " , getIssuerDN :" + x509Certificate.getIssuerDN());
        }
        int size = this.f5302a.size();
        for (int i = 0; i < size; i++) {
            try {
                String str2 = f5301b;
                C1129c.m21124c(str2, "check server i : " + i);
                X509TrustManager x509TrustManager = this.f5302a.get(i);
                X509Certificate[] acceptedIssuers = x509TrustManager.getAcceptedIssuers();
                if (acceptedIssuers != null) {
                    C1129c.m21124c(str2, "client root ca size is : " + acceptedIssuers.length);
                    for (int i2 = 0; i2 < acceptedIssuers.length; i2++) {
                        C1129c.m21125b(f5301b, "client root ca getIssuerDN :" + acceptedIssuers[i2].getIssuerDN());
                    }
                }
                x509TrustManager.checkServerTrusted(x509CertificateArr, str);
                return;
            } catch (CertificateException e) {
                String str3 = f5301b;
                C1129c.m21123d(str3, "checkServerTrusted error :" + e.getMessage() + " , time : " + i);
                if (i == size - 1) {
                    if (x509CertificateArr != null && x509CertificateArr.length > 0) {
                        C1129c.m21123d(str3, "root ca issuer : " + x509CertificateArr[x509CertificateArr.length - 1].getIssuerDN());
                    }
                    throw e;
                }
            }
        }
    }

    @Override // javax.net.ssl.X509TrustManager
    public X509Certificate[] getAcceptedIssuers() {
        try {
            ArrayList arrayList = new ArrayList();
            for (X509TrustManager x509TrustManager : this.f5302a) {
                arrayList.addAll(Arrays.asList(x509TrustManager.getAcceptedIssuers()));
            }
            return (X509Certificate[]) arrayList.toArray(new X509Certificate[arrayList.size()]);
        } catch (Exception e) {
            String str = f5301b;
            C1129c.m21123d(str, "getAcceptedIssuers exception : " + e.getMessage());
            return new X509Certificate[0];
        }
    }
}
