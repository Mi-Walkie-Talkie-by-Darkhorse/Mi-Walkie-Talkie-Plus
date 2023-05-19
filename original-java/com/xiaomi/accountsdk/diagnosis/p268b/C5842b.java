package com.xiaomi.accountsdk.diagnosis.p268b;

import android.os.Process;
import android.text.TextUtils;
import com.xiaomi.accountsdk.diagnosis.p271e.C5857d;
import com.xiaomi.mipush.sdk.Constants;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Locale;

/* renamed from: com.xiaomi.accountsdk.diagnosis.b.b */
/* loaded from: classes2.dex */
public class C5842b {

    /* renamed from: a */
    private static String f20771a;

    /* renamed from: b */
    private static final ThreadLocal<SimpleDateFormat> f20772b = new ThreadLocal<SimpleDateFormat>() { // from class: com.xiaomi.accountsdk.diagnosis.b.b.1
        /* JADX INFO: Access modifiers changed from: protected */
        @Override // java.lang.ThreadLocal
        /* renamed from: a */
        public SimpleDateFormat initialValue() {
            return new SimpleDateFormat("yyyy-MM-dd HH:mm:ss.SSS", Locale.US);
        }
    };

    /* renamed from: a */
    private static String m4224a() {
        return f20772b.get().format(new Date());
    }

    /* renamed from: a */
    public static String m4223a(EnumC5844c enumC5844c, String str) {
        String m4222b = m4222b();
        int myPid = Process.myPid();
        int myTid = Process.myTid();
        return m4224a() + " " + myPid + Constants.ACCEPT_TIME_SEPARATOR_SERVER + myTid + "/" + m4222b + " " + enumC5844c.toString() + "/" + str + ": ";
    }

    /* renamed from: b */
    private static String m4222b() {
        if (f20771a == null) {
            String m4192a = C5857d.m4192a(Process.myPid());
            if (TextUtils.isEmpty(m4192a)) {
                m4192a = "UnknownProcess";
            }
            f20771a = m4192a;
        }
        return f20771a;
    }
}
