package com.ifengyu.library.utils;

import android.util.Base64;
import java.nio.charset.StandardCharsets;

/* renamed from: com.ifengyu.library.utils.h */
/* loaded from: classes2.dex */
public class EncoderUtil {
    /* renamed from: a */
    public static String m8675a(String str) {
        return new String(Base64.decode(str.getBytes(StandardCharsets.UTF_8), 2));
    }

    /* renamed from: b */
    public static byte[] m8674b(String str) {
        return Base64.decode(str.getBytes(StandardCharsets.UTF_8), 2);
    }

    /* renamed from: c */
    public static String m8673c(String str) {
        return Base64.encodeToString(str.getBytes(StandardCharsets.UTF_8), 2);
    }
}
