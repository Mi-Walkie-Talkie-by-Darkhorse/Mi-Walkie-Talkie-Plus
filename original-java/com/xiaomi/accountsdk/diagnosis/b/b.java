package com.xiaomi.accountsdk.diagnosis.b;

import android.os.Process;
import android.text.TextUtils;
import com.xiaomi.accountsdk.diagnosis.e.d;
import com.xiaomi.mipush.sdk.Constants;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Locale;

/* loaded from: classes2.dex */
public class b {

    /* renamed from: a  reason: collision with root package name */
    private static String f8619a;

    /* renamed from: b  reason: collision with root package name */
    private static final ThreadLocal<SimpleDateFormat> f8620b = new ThreadLocal<SimpleDateFormat>() { // from class: com.xiaomi.accountsdk.diagnosis.b.b.1
        /* JADX INFO: Access modifiers changed from: protected */
        /* renamed from: a */
        public SimpleDateFormat initialValue() {
            return new SimpleDateFormat("yyyy-MM-dd HH:mm:ss.SSS", Locale.US);
        }
    };

    private static String a() {
        return f8620b.get().format(new Date());
    }

    public static String a(c cVar, String str) {
        String b2 = b();
        int myPid = Process.myPid();
        int myTid = Process.myTid();
        return a() + " " + myPid + Constants.ACCEPT_TIME_SEPARATOR_SERVER + myTid + "/" + b2 + " " + cVar.toString() + "/" + str + ": ";
    }

    private static String b() {
        if (f8619a == null) {
            String a2 = d.a(Process.myPid());
            if (TextUtils.isEmpty(a2)) {
                a2 = "UnknownProcess";
            }
            f8619a = a2;
        }
        return f8619a;
    }
}
