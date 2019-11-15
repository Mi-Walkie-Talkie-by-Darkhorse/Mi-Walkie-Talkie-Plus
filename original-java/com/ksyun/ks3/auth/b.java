package com.ksyun.ks3.auth;

import android.text.TextUtils;
import android.util.Base64;
import android.util.Log;
import com.google.devtools.build.android.desugar.runtime.ThrowableExtension;
import com.ksyun.ks3.a.a;
import com.ksyun.ks3.a.f;
import com.ksyun.ks3.services.request.Ks3HttpRequest;
import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;
import java.security.SignatureException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Comparator;
import java.util.Locale;
import java.util.Map;
import javax.crypto.Mac;
import javax.crypto.spec.SecretKeySpec;

/* compiled from: AuthUtils */
public class b {
    public static String a(com.ksyun.ks3.model.acl.b bVar, Ks3HttpRequest ks3HttpRequest) throws SignatureException {
        return "KSS " + bVar.a() + ":" + a(bVar.b(), ks3HttpRequest);
    }

    private static String a(String str, Ks3HttpRequest ks3HttpRequest) throws SignatureException {
        String a = a(ks3HttpRequest);
        String httpMethod = ks3HttpRequest.k().toString();
        String l = ks3HttpRequest.l();
        String m = ks3HttpRequest.m();
        String n = ks3HttpRequest.n();
        ArrayList arrayList = new ArrayList();
        arrayList.addAll(Arrays.asList(new String[]{httpMethod, l, m, n}));
        String trim = b(ks3HttpRequest).trim();
        if (trim != null && !trim.equals("")) {
            arrayList.add(trim);
        }
        arrayList.add(a);
        String a2 = f.a(arrayList.toArray(), "\n");
        String a3 = a(a2, str);
        Log.d("ks3_android_sdk", "signStr = " + a2);
        return a3;
    }

    public static String a(Ks3HttpRequest ks3HttpRequest) {
        String str;
        String d = ks3HttpRequest.d();
        String g = ks3HttpRequest.g();
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append("/");
        if (!TextUtils.isEmpty(d)) {
            stringBuffer.append(d).append("/");
        }
        if (!TextUtils.isEmpty(g)) {
            try {
                str = URLEncoder.encode(g, "UTF-8");
            } catch (UnsupportedEncodingException e) {
                ThrowableExtension.printStackTrace(e);
                str = null;
            }
            stringBuffer.append(str.replace("//", "/%2F"));
        }
        String stringBuffer2 = stringBuffer.toString();
        String j = ks3HttpRequest.j();
        if (j == null || j.equals("")) {
            return stringBuffer2;
        }
        return stringBuffer2 + "?" + j;
    }

    public static String b(Ks3HttpRequest ks3HttpRequest) {
        String str = "x-kss";
        Map i = ks3HttpRequest.i();
        ArrayList arrayList = new ArrayList();
        for (String str2 : i.keySet()) {
            if (str2.toLowerCase(Locale.US).startsWith(str)) {
                arrayList.add(str2);
            }
        }
        Collections.sort(arrayList, new Comparator<String>() {
            /* renamed from: a */
            public int compare(String str, String str2) {
                return a.a(str.getBytes(), str2.toString().getBytes());
            }
        });
        StringBuffer stringBuffer = new StringBuffer();
        int i2 = 0;
        while (true) {
            int i3 = i2;
            if (i3 < arrayList.size()) {
                stringBuffer.append(((String) arrayList.get(i3)) + ":" + ((String) i.get((String) arrayList.get(i3))));
                if (i3 < arrayList.size() - 1) {
                    stringBuffer.append("\n");
                }
                i2 = i3 + 1;
            } else {
                Log.d("ks3_android_sdk", "header signer str = " + stringBuffer.toString());
                return stringBuffer.toString();
            }
        }
    }

    public static String a(String str, String str2) throws SignatureException {
        try {
            SecretKeySpec secretKeySpec = new SecretKeySpec(str2.getBytes(), "HmacSHA1");
            Mac instance = Mac.getInstance("HmacSHA1");
            instance.init(secretKeySpec);
            return Base64.encodeToString(instance.doFinal(str.getBytes()), 0);
        } catch (Exception e) {
            throw new SignatureException("Failed to generate HMAC : " + e);
        }
    }
}
