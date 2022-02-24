package com.xiaomi.accountsdk.diagnosis;

import android.util.Pair;
import com.xiaomi.accountsdk.diagnosis.encrypt.d;
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

/* loaded from: classes2.dex */
class f implements DiagnosisLogInterface {

    /* renamed from: a  reason: collision with root package name */
    private static final Random f8633a = new Random();

    /* loaded from: classes2.dex */
    private enum a {
        GET,
        POST
    }

    private static String a() {
        return Integer.toHexString(f8633a.nextInt());
    }

    private static String a(a aVar, String str, Map<String, String> map, String str2, Map<String, String> map2, Map<String, String> map3, Map<String, String> map4) {
        String a2 = a();
        Pair<String, String> b2 = b(c(str));
        StringBuilder sb = new StringBuilder();
        sb.append(aVar.toString());
        sb.append(" request id=");
        sb.append(a2);
        sb.append("\n");
        sb.append("fullUrl: ");
        sb.append(str2);
        sb.append("\n");
        sb.append("addr: ");
        sb.append((String) b2.first);
        sb.append(", addr list: ");
        sb.append((String) b2.second);
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
        a(sb.toString());
        return a2;
    }

    private static String a(Throwable th) {
        if (th == null) {
            return "";
        }
        StringWriter stringWriter = new StringWriter();
        PrintWriter printWriter = new PrintWriter((Writer) stringWriter, false);
        th.printStackTrace(printWriter);
        printWriter.flush();
        return stringWriter.toString();
    }

    private static void a(String str) {
        d.a("AccountDiagnosisLogger", str);
    }

    private static Pair<String, String> b(String str) {
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

    private static String c(String str) {
        try {
            return new URI(str).getHost();
        } catch (URISyntaxException unused) {
            return null;
        }
    }

    @Override // com.xiaomi.accountsdk.diagnosis.DiagnosisLogInterface
    public void log(String str) {
        a(str);
    }

    @Override // com.xiaomi.accountsdk.diagnosis.DiagnosisLogInterface
    public String logGetRequest(String str, Map<String, String> map, String str2, Map<String, String> map2, Map<String, String> map3) {
        return a(a.GET, str, map, str2, null, map3, map2);
    }

    @Override // com.xiaomi.accountsdk.diagnosis.DiagnosisLogInterface
    public String logPostRequest(String str, Map<String, String> map, String str2, Map<String, String> map2, Map<String, String> map3, Map<String, String> map4) {
        return a(a.POST, str, map, str2, map2, map3, map4);
    }

    @Override // com.xiaomi.accountsdk.diagnosis.DiagnosisLogInterface
    public void logRequestException(Exception exc) {
        String a2 = a(exc);
        a("RequestException: " + a2);
    }

    @Override // com.xiaomi.accountsdk.diagnosis.DiagnosisLogInterface
    public void logResponse(String str, String str2, Map<String, List<String>> map, Map<String, String> map2) {
        a("request id: " + str + "\nraw response body: " + str2 + "\nresponse headers: " + map + "\nresponse cookies: " + map2);
    }

    @Override // com.xiaomi.accountsdk.diagnosis.DiagnosisLogInterface
    public void logResponseCode(String str, int i) {
        a("Response code=" + i + ", request id=" + str);
    }

    @Override // com.xiaomi.accountsdk.diagnosis.DiagnosisLogInterface
    public void logResponseDecryptedBody(String str) {
        a("DecryptedBody: " + str);
    }
}
