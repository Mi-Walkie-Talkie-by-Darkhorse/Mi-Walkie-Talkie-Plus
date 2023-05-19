package com.xiaomi.accountsdk.diagnosis;

import android.util.Pair;
import com.xiaomi.accountsdk.diagnosis.encrypt.C5863d;
import com.xiaomi.mipush.sdk.Constants;
import java.io.PrintWriter;
import java.io.StringWriter;
import java.io.Writer;
import java.net.InetAddress;
import java.net.URI;
import java.net.URISyntaxException;
import java.net.UnknownHostException;
import java.util.List;
import java.util.Map;
import java.util.Random;

/* renamed from: com.xiaomi.accountsdk.diagnosis.f */
/* loaded from: classes2.dex */
class C5867f implements DiagnosisLogInterface {

    /* renamed from: a */
    private static final Random f20789a = new Random();

    /* renamed from: com.xiaomi.accountsdk.diagnosis.f$a */
    /* loaded from: classes2.dex */
    private enum EnumC5868a {
        GET,
        POST
    }

    /* renamed from: a */
    private static String m4173a() {
        return Integer.toHexString(f20789a.nextInt());
    }

    /* renamed from: a */
    private static String m4172a(EnumC5868a enumC5868a, String str, Map<String, String> map, String str2, Map<String, String> map2, Map<String, String> map3, Map<String, String> map4) {
        String m4173a = m4173a();
        Pair<String, String> m4169b = m4169b(m4168c(str));
        StringBuilder sb = new StringBuilder();
        sb.append(enumC5868a.toString());
        sb.append(" request id=");
        sb.append(m4173a);
        sb.append("\n");
        sb.append("fullUrl: ");
        sb.append(str2);
        sb.append("\n");
        sb.append("addr: ");
        sb.append((String) m4169b.first);
        sb.append(", addr list: ");
        sb.append((String) m4169b.second);
        sb.append("\n");
        sb.append("url: ");
        sb.append(str);
        sb.append("\n");
        sb.append("urlParams: ");
        sb.append(map);
        sb.append("\n");
        if (map2 != null) {
            sb.append("postParams: ");
            sb.append(map2);
            sb.append("\n");
        }
        sb.append("headers: ");
        sb.append(map4);
        sb.append("\n");
        sb.append("cookies: ");
        sb.append(map3);
        m4171a(sb.toString());
        return m4173a;
    }

    /* renamed from: a */
    private static String m4170a(Throwable th) {
        if (th == null) {
            return "";
        }
        StringWriter stringWriter = new StringWriter();
        PrintWriter printWriter = new PrintWriter((Writer) stringWriter, false);
        th.printStackTrace(printWriter);
        printWriter.flush();
        return stringWriter.toString();
    }

    /* renamed from: a */
    private static void m4171a(String str) {
        C5863d.m4183a("AccountDiagnosisLogger", str);
    }

    /* renamed from: b */
    private static Pair<String, String> m4169b(String str) {
        String str2;
        String str3;
        try {
            str2 = InetAddress.getByName(str).toString();
        } catch (UnknownHostException unused) {
            str2 = "Unknown";
        }
        try {
            InetAddress[] allByName = InetAddress.getAllByName(str);
            StringBuilder sb = new StringBuilder();
            sb.append("(");
            for (InetAddress inetAddress : allByName) {
                sb.append(inetAddress);
                sb.append(Constants.ACCEPT_TIME_SEPARATOR_SP);
            }
            sb.append(")");
            str3 = sb.toString();
        } catch (UnknownHostException unused2) {
            str3 = "(Unknown)";
        }
        return Pair.create(str2, str3);
    }

    /* renamed from: c */
    private static String m4168c(String str) {
        try {
            return new URI(str).getHost();
        } catch (URISyntaxException unused) {
            return null;
        }
    }

    @Override // com.xiaomi.accountsdk.diagnosis.DiagnosisLogInterface
    public void log(String str) {
        m4171a(str);
    }

    @Override // com.xiaomi.accountsdk.diagnosis.DiagnosisLogInterface
    public String logGetRequest(String str, Map<String, String> map, String str2, Map<String, String> map2, Map<String, String> map3) {
        return m4172a(EnumC5868a.GET, str, map, str2, null, map3, map2);
    }

    @Override // com.xiaomi.accountsdk.diagnosis.DiagnosisLogInterface
    public String logPostRequest(String str, Map<String, String> map, String str2, Map<String, String> map2, Map<String, String> map3, Map<String, String> map4) {
        return m4172a(EnumC5868a.POST, str, map, str2, map2, map3, map4);
    }

    @Override // com.xiaomi.accountsdk.diagnosis.DiagnosisLogInterface
    public void logRequestException(Exception exc) {
        String m4170a = m4170a(exc);
        m4171a("RequestException: " + m4170a);
    }

    @Override // com.xiaomi.accountsdk.diagnosis.DiagnosisLogInterface
    public void logResponse(String str, String str2, Map<String, List<String>> map, Map<String, String> map2) {
        m4171a("request id: " + str + "\nraw response body: " + str2 + "\nresponse headers: " + map + "\nresponse cookies: " + map2);
    }

    @Override // com.xiaomi.accountsdk.diagnosis.DiagnosisLogInterface
    public void logResponseCode(String str, int i) {
        m4171a("Response code=" + i + ", request id=" + str);
    }

    @Override // com.xiaomi.accountsdk.diagnosis.DiagnosisLogInterface
    public void logResponseDecryptedBody(String str) {
        m4171a("DecryptedBody: " + str);
    }
}
