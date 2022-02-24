package com.xiaomi.accountsdk.diagnosis.e;

import com.xiaomi.accountsdk.diagnosis.b;
import java.io.File;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Locale;

/* loaded from: classes2.dex */
public class c {

    /* renamed from: a  reason: collision with root package name */
    private static final ThreadLocal<SimpleDateFormat> f8630a = new ThreadLocal<SimpleDateFormat>() { // from class: com.xiaomi.accountsdk.diagnosis.e.c.1
        /* JADX INFO: Access modifiers changed from: protected */
        /* renamed from: a */
        public SimpleDateFormat initialValue() {
            return new SimpleDateFormat("yyyyMMddHHmmss", Locale.US);
        }
    };

    public static File a() {
        File b2 = b();
        File parentFile = b2.getParentFile();
        if (!parentFile.exists() && !parentFile.mkdirs()) {
            return null;
        }
        try {
            Runtime.getRuntime().exec("logcat -d -f " + b2.getAbsolutePath()).waitFor();
        } catch (IOException | InterruptedException e) {
            e.printStackTrace();
        }
        return b2;
    }

    private static File b() {
        String format = f8630a.get().format(new Date());
        File b2 = b.b();
        return new File(b2, format + ".logcat");
    }
}
