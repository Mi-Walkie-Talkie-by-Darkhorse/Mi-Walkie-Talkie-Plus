package com.xiaomi.accountsdk.diagnosis.b;

import com.xiaomi.accountsdk.diagnosis.b;
import java.io.BufferedWriter;
import java.io.Closeable;
import java.io.File;
import java.io.FileWriter;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Locale;

/* loaded from: classes2.dex */
public class a {

    /* renamed from: a  reason: collision with root package name */
    private static final ThreadLocal<SimpleDateFormat> f8618a = new ThreadLocal<SimpleDateFormat>() { // from class: com.xiaomi.accountsdk.diagnosis.b.a.1
        /* JADX INFO: Access modifiers changed from: protected */
        /* renamed from: a */
        public SimpleDateFormat initialValue() {
            return new SimpleDateFormat("yyyyMMdd", Locale.US);
        }
    };

    private static File a() {
        String format = f8618a.get().format(new Date());
        File a2 = b.a();
        return new File(a2, format + ".log");
    }

    private static void a(Closeable closeable) {
        if (closeable != null) {
            try {
                closeable.close();
            } catch (IOException unused) {
            }
        }
    }

    public static void a(String str) {
        Throwable th;
        IOException e;
        BufferedWriter bufferedWriter;
        File a2 = a();
        File parentFile = a2.getParentFile();
        if (parentFile.exists() || parentFile.mkdirs()) {
            BufferedWriter bufferedWriter2 = null;
            try {
                try {
                    bufferedWriter = new BufferedWriter(new FileWriter(a2, true));
                } catch (Throwable th2) {
                    th = th2;
                }
            } catch (IOException e2) {
                e = e2;
            }
            try {
                bufferedWriter.append((CharSequence) str);
                bufferedWriter.newLine();
                a(bufferedWriter);
            } catch (IOException e3) {
                e = e3;
                bufferedWriter2 = bufferedWriter;
                e.printStackTrace();
                a(bufferedWriter2);
            } catch (Throwable th3) {
                th = th3;
                bufferedWriter2 = bufferedWriter;
                a(bufferedWriter2);
                throw th;
            }
        }
    }
}
