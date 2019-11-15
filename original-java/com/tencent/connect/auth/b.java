package com.tencent.connect.auth;

import com.google.devtools.build.android.desugar.runtime.ThrowableExtension;
import com.tencent.tauth.IUiListener;
import java.util.HashMap;

/* compiled from: ProGuard */
public class b {
    public static b a;
    static final /* synthetic */ boolean d;
    private static int e = 0;
    public HashMap<String, a> b = new HashMap<>();
    public final String c = "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789";

    /* compiled from: ProGuard */
    public static class a {
        public IUiListener a;
        public a b;
        public String c;
    }

    static {
        boolean z;
        if (!b.class.desiredAssertionStatus()) {
            z = true;
        } else {
            z = false;
        }
        d = z;
    }

    public static b a() {
        if (a == null) {
            a = new b();
        }
        return a;
    }

    public static int b() {
        int i = e + 1;
        e = i;
        return i;
    }

    public String a(a aVar) {
        int b2 = b();
        try {
            this.b.put("" + b2, aVar);
        } catch (Throwable th) {
            ThrowableExtension.printStackTrace(th);
        }
        return "" + b2;
    }

    public String c() {
        int ceil = (int) Math.ceil((Math.random() * 20.0d) + 3.0d);
        char[] charArray = "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789".toCharArray();
        int length = charArray.length;
        StringBuffer stringBuffer = new StringBuffer();
        for (int i = 0; i < ceil; i++) {
            stringBuffer.append(charArray[(int) (Math.random() * ((double) length))]);
        }
        return stringBuffer.toString();
    }
}
