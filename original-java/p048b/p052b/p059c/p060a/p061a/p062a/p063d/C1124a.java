package p048b.p052b.p059c.p060a.p061a.p062a.p063d;

import java.security.cert.X509Certificate;
import javax.net.ssl.HostnameVerifier;
import javax.net.ssl.SSLException;
import javax.net.ssl.SSLSession;
import p048b.p052b.p059c.p060a.p061a.p062a.p064e.C1129c;

/* renamed from: b.b.c.a.a.a.d.a */
/* loaded from: classes2.dex */
public class C1124a implements HostnameVerifier {
    @Override // javax.net.ssl.HostnameVerifier
    public final boolean verify(String str, SSLSession sSLSession) {
        try {
            X509Certificate x509Certificate = (X509Certificate) sSLSession.getPeerCertificates()[0];
            C1129c.m21125b("", "verify: certificate is : " + x509Certificate.getSubjectDN().getName());
            C1126c.m21136a(str, x509Certificate, true);
            return true;
        } catch (SSLException e) {
            C1129c.m21123d("", "SSLException : " + e.getMessage());
            return false;
        }
    }
}
