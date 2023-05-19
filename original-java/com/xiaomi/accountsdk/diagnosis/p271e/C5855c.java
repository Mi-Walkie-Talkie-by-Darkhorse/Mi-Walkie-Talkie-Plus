package com.xiaomi.accountsdk.diagnosis.p271e;

import com.xiaomi.accountsdk.diagnosis.C5839b;
import java.io.File;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Locale;

/* renamed from: com.xiaomi.accountsdk.diagnosis.e.c */
/* loaded from: classes2.dex */
public class C5855c {

    /* renamed from: a */
    private static final ThreadLocal<SimpleDateFormat> f20786a = new ThreadLocal<SimpleDateFormat>() { // from class: com.xiaomi.accountsdk.diagnosis.e.c.1
        /* JADX INFO: Access modifiers changed from: protected */
        @Override // java.lang.ThreadLocal
        /* renamed from: a */
        public SimpleDateFormat initialValue() {
            return new SimpleDateFormat("yyyyMMddHHmmss", Locale.US);
        }
    };

    /* renamed from: a */
    public static File m4195a() {
        File m4194b = m4194b();
        File parentFile = m4194b.getParentFile();
        if (parentFile.exists() || parentFile.mkdirs()) {
            try {
                Runtime.getRuntime().exec("logcat -d -f " + m4194b.getAbsolutePath()).waitFor();
            } catch (IOException | InterruptedException e) {
                e.printStackTrace();
            }
            return m4194b;
        }
        return null;
    }

    /* renamed from: b */
    private static File m4194b() {
        String format = f20786a.get().format(new Date());
        File m4230b = C5839b.m4230b();
        return new File(m4230b, format + ".logcat");
    }
}
