package com.xiaomi.accountsdk.diagnosis.p268b;

import com.xiaomi.accountsdk.diagnosis.C5839b;
import java.io.BufferedWriter;
import java.io.Closeable;
import java.io.File;
import java.io.FileWriter;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Locale;

/* renamed from: com.xiaomi.accountsdk.diagnosis.b.a */
/* loaded from: classes2.dex */
public class C5840a {

    /* renamed from: a */
    private static final ThreadLocal<SimpleDateFormat> f20770a = new ThreadLocal<SimpleDateFormat>() { // from class: com.xiaomi.accountsdk.diagnosis.b.a.1
        /* JADX INFO: Access modifiers changed from: protected */
        @Override // java.lang.ThreadLocal
        /* renamed from: a */
        public SimpleDateFormat initialValue() {
            return new SimpleDateFormat("yyyyMMdd", Locale.US);
        }
    };

    /* renamed from: a */
    private static File m4228a() {
        String format = f20770a.get().format(new Date());
        File m4231a = C5839b.m4231a();
        return new File(m4231a, format + ".log");
    }

    /* renamed from: a */
    private static void m4227a(Closeable closeable) {
        if (closeable == null) {
            return;
        }
        try {
            closeable.close();
        } catch (IOException unused) {
        }
    }

    /* renamed from: a */
    public static void m4226a(String str) {
        File m4228a = m4228a();
        File parentFile = m4228a.getParentFile();
        if (!parentFile.exists() && !parentFile.mkdirs()) {
            return;
        }
        BufferedWriter bufferedWriter = null;
        try {
            try {
                BufferedWriter bufferedWriter2 = new BufferedWriter(new FileWriter(m4228a, true));
                try {
                    bufferedWriter2.append((CharSequence) str);
                    bufferedWriter2.newLine();
                    m4227a(bufferedWriter2);
                } catch (IOException e) {
                    e = e;
                    bufferedWriter = bufferedWriter2;
                    e.printStackTrace();
                    m4227a(bufferedWriter);
                } catch (Throwable th) {
                    th = th;
                    bufferedWriter = bufferedWriter2;
                    m4227a(bufferedWriter);
                    throw th;
                }
            } catch (IOException e2) {
                e = e2;
            }
        } catch (Throwable th2) {
            th = th2;
        }
    }
}
