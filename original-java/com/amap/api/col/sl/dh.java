package com.amap.api.col.sl;

import com.amap.api.col.sl.db.a;
import com.google.devtools.build.android.desugar.runtime.ThrowableExtension;
import java.io.ByteArrayInputStream;
import java.io.Closeable;
import java.security.PublicKey;
import java.security.cert.CertificateFactory;
import java.security.cert.X509Certificate;
import java.util.List;

/* compiled from: Utils */
public final class dh {
    static PublicKey a() {
        ByteArrayInputStream byteArrayInputStream;
        try {
            CertificateFactory instance = CertificateFactory.getInstance("X.509");
            byteArrayInputStream = new ByteArrayInputStream(bv.b("MIIDRzCCAi+gAwIBAgIEeuDbsDANBgkqhkiG9w0BAQsFADBTMQswCQYDVQQGEwJjbjELMAkGA1UECBMCYmoxCzAJBgNVBAcTAmJqMQ0wCwYDVQQKEwRvcGVuMQ4wDAYDVQQLEwVnYW9kZTELMAkGA1UEAxMCUWkwIBcNMTYwODAxMDE0ODMwWhgPMjA3MTA1MDUwMTQ4MzBaMFMxCzAJBgNVBAYTAmNuMQswCQYDVQQIEwJiajELMAkGA1UEBxMCYmoxDTALBgNVBAoTBG9wZW4xDjAMBgNVBAsTBWdhb2RlMQswCQYDVQQDEwJRaTCCASIwDQYJKoZIhvcNAQEBBQADggEPADCCAQoCggEBAKpL13mZm4q6AFP5csQE7130Lwq8m+HICy3rBARd9vbw5Cb1wFF96KdhC5P/aASlrPb+6MSyP1nE97p3ygKJWsgxExyvVuOvh1KUqOFuK15oY7JKTk6L4eLCbkBJZV2DLffpW0HGiRpmFG8LJR0sjNOoubSd5R/6XoBwyRglsyVHprjrK2qDRvT3Edgtfvxp4HnUzMsDD3CJRtgsaDw6ECyF7fhYKEz9I6OEEVsPlpbgzRmhSeFDL77/k1mhPve1ZyKGlPcxvSSdLSAlV0hzr5NKlujHll7BbouwDnr6l/0O44AzZ0V/ieft1iBkSLirnlm56uI/8jdh8ANrD1fW4ZUCAwEAAaMhMB8wHQYDVR0OBBYEFBzudtI5UKRvHGDV+VQRzItIj3PqMA0GCSqGSIb3DQEBCwUAA4IBAQBS2EGndgvIBnf7Ce4IhDbm7F5h4L+6TYGmT9acnQbEFY8oUoFblMDgg+cETT44jU/elwbJJVmKhj/WRQl+AdSALBAgDvxq1AcjlGg+c8H3pa2BWlrxNJP9MFLIEI5bA8m5og/Epjut50uemZ9ggoNmJeW0N/a6D8euhYJKOYngUQqDu6cwLj1Ec0ptwrNRbvRXXgzjfJMPE/ii4K/b8JZ+QN2d/bl7QEvKWBSzVueZifV659qAbMh6C9TCVstWWfV53Z3Vyt+duDNU5ed7aWao42Ppw4VHslrJW0V6BXDUhhzgXx28UWY78W7LmYGCtC8PfDId2+k4tPoTNPM6HHP5"));
            try {
                PublicKey publicKey = ((X509Certificate) instance.generateCertificate(byteArrayInputStream)).getPublicKey();
                try {
                    a((Closeable) byteArrayInputStream);
                    return publicKey;
                } catch (Throwable th) {
                    ThrowableExtension.printStackTrace(th);
                    return publicKey;
                }
            } catch (Throwable th2) {
                th = th2;
            }
        } catch (Throwable th3) {
            th = th3;
            byteArrayInputStream = null;
            a((Closeable) byteArrayInputStream);
            throw th;
        }
    }

    public static int a(String str, String str2) {
        int i = 0;
        try {
            String[] split = str.split("\\.");
            String[] split2 = str2.split("\\.");
            int min = Math.min(split.length, split2.length);
            for (int i2 = 0; i2 < min; i2++) {
                i = split[i2].length() - split2[i2].length();
                if (i != 0) {
                    break;
                }
                i = split[i2].compareTo(split2[i2]);
                if (i != 0) {
                    break;
                }
            }
            if (i != 0) {
                return i;
            }
            return split.length - split2.length;
        } catch (Exception e) {
            cj.a((Throwable) e, "Utils", "compareVersion");
            return -1;
        }
    }

    static void a(List<df> list) {
        int i = 0;
        while (true) {
            int i2 = i;
            if (i2 < list.size() - 1) {
                int i3 = i2 + 1;
                while (true) {
                    int i4 = i3;
                    if (i4 >= list.size()) {
                        break;
                    }
                    df dfVar = (df) list.get(i2);
                    df dfVar2 = (df) list.get(i4);
                    if (a(dfVar2.e(), dfVar.e()) > 0) {
                        list.set(i2, dfVar2);
                        list.set(i4, dfVar);
                    }
                    i3 = i4 + 1;
                }
                i = i2 + 1;
            } else {
                return;
            }
        }
    }

    static boolean b(String str, String str2) {
        String a = bw.a(str);
        if (a == null || !a.equalsIgnoreCase(str2)) {
            return false;
        }
        return true;
    }

    static boolean a(cq cqVar, String str, String str2, bz bzVar) {
        df a = a.a(cqVar, str);
        if (a == null || !bzVar.b().equals(a.d()) || !b(str2, a.b())) {
            return false;
        }
        return true;
    }

    static void a(Closeable closeable) {
        if (closeable != null) {
            try {
                closeable.close();
            } catch (Throwable th) {
                ThrowableExtension.printStackTrace(th);
            }
        }
    }
}
