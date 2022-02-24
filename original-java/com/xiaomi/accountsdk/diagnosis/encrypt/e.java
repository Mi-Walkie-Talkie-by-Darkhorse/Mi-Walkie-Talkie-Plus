package com.xiaomi.accountsdk.diagnosis.encrypt;

import android.util.Log;
import com.xiaomi.accountsdk.diagnosis.b.a;
import com.xiaomi.accountsdk.diagnosis.b.b;
import com.xiaomi.accountsdk.diagnosis.b.c;
import com.xiaomi.accountsdk.diagnosis.encrypt.PassportEnvEncryptUtils;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public class e {
    private e() {
    }

    private static int a(int i, String str, String str2) {
        String a2 = b.a(c.a(i), str);
        a.a(a2 + str2);
        return Log.println(i, str, str2);
    }

    public static e a() {
        return new e();
    }

    private String a(String str) {
        try {
            PassportEnvEncryptUtils.EncryptResult encrypt = PassportEnvEncryptUtils.encrypt(str);
            return String.format("#&^%s!!%s^&#", encrypt.encryptedKey, encrypt.content);
        } catch (PassportEnvEncryptUtils.EncryptException e) {
            e.printStackTrace();
            return str;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int a(int i, String str, String str2, Throwable th) {
        int a2 = a(i, str, a(str2)) + 0;
        return th != null ? a2 + a(i, str, a(Log.getStackTraceString(th))) : a2;
    }
}
