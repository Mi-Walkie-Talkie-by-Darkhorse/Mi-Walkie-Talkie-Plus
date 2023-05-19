package com.xiaomi.accountsdk.diagnosis;

import java.io.File;

/* renamed from: com.xiaomi.accountsdk.diagnosis.b */
/* loaded from: classes2.dex */
public class C5839b {
    /* renamed from: a */
    public static File m4231a() {
        return new File(DiagnosisController.getApplicationContext().getCacheDir(), ".XMPassport");
    }

    /* renamed from: b */
    public static File m4230b() {
        return new File(m4231a(), "logcat");
    }

    /* renamed from: c */
    public static File m4229c() {
        return new File(m4231a(), "zip");
    }
}
