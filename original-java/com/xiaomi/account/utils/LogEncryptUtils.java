package com.xiaomi.account.utils;

import com.xiaomi.accountsdk.diagnosis.encrypt.PassportEnvEncryptUtils;

/* loaded from: classes2.dex */
public class LogEncryptUtils {
    public static String generateEncryptMessageLine(String str) {
        try {
            PassportEnvEncryptUtils.EncryptResult encrypt = PassportEnvEncryptUtils.encrypt(str);
            return String.format("#&^%s!!%s^&#", encrypt.encryptedKey, encrypt.content);
        } catch (Exception e) {
            e.printStackTrace();
            return str;
        }
    }
}
