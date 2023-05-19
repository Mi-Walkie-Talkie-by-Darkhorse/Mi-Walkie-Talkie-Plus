package com.ifengyu.intercom.device.lite.utils;

import java.lang.Character;

/* renamed from: com.ifengyu.intercom.device.lite.utils.c */
/* loaded from: classes2.dex */
public class CharacterUtils {
    /* renamed from: a */
    public static boolean m13841a(char c) {
        Character.UnicodeBlock of = Character.UnicodeBlock.of(c);
        return of == Character.UnicodeBlock.CJK_UNIFIED_IDEOGRAPHS || of == Character.UnicodeBlock.CJK_COMPATIBILITY_IDEOGRAPHS || of == Character.UnicodeBlock.CJK_UNIFIED_IDEOGRAPHS_EXTENSION_A || of == Character.UnicodeBlock.CJK_UNIFIED_IDEOGRAPHS_EXTENSION_B;
    }
}
