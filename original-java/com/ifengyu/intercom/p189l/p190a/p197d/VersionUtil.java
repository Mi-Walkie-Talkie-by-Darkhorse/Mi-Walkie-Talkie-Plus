package com.ifengyu.intercom.p189l.p190a.p197d;

/* renamed from: com.ifengyu.intercom.l.a.d.d */
/* loaded from: classes2.dex */
public class VersionUtil {
    /* renamed from: a */
    public static String m11802a(int i) {
        return String.format("%d.%d.%d", Integer.valueOf((i >> 24) & 255), Integer.valueOf((i >> 16) & 255), Integer.valueOf(i & 65535));
    }
}
