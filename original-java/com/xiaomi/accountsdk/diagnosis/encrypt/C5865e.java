package com.xiaomi.accountsdk.diagnosis.encrypt;

import android.util.Log;
import com.xiaomi.accountsdk.diagnosis.encrypt.PassportEnvEncryptUtils;
import com.xiaomi.accountsdk.diagnosis.p268b.C5840a;
import com.xiaomi.accountsdk.diagnosis.p268b.C5842b;
import com.xiaomi.accountsdk.diagnosis.p268b.EnumC5844c;

/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: com.xiaomi.accountsdk.diagnosis.encrypt.e */
/* loaded from: classes2.dex */
public class C5865e {
    private C5865e() {
    }

    /* renamed from: a */
    private static int m4180a(int i, String str, String str2) {
        String m4223a = C5842b.m4223a(EnumC5844c.m4220a(i), str);
        C5840a.m4226a(m4223a + str2);
        return Log.println(i, str, str2);
    }

    /* renamed from: a */
    public static C5865e m4181a() {
        return new C5865e();
    }

    /* renamed from: a */
    private String m4178a(String str) {
        try {
            PassportEnvEncryptUtils.EncryptResult encrypt = PassportEnvEncryptUtils.encrypt(str);
            return String.format("#&^%s!!%s^&#", encrypt.encryptedKey, encrypt.content);
        } catch (PassportEnvEncryptUtils.EncryptException e) {
            e.printStackTrace();
            return str;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public int m4179a(int i, String str, String str2, Throwable th) {
        int m4180a = m4180a(i, str, m4178a(str2)) + 0;
        return th != null ? m4180a + m4180a(i, str, m4178a(Log.getStackTraceString(th))) : m4180a;
    }
}
