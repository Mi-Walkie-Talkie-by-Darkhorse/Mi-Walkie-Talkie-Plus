package com.ifengyu.intercom.lite.utils;

/* compiled from: VersionUtil.java */
/* loaded from: classes2.dex */
public class l {
    public static String a(int i) {
        return String.format("%d.%d.%d", Integer.valueOf((i >> 24) & 255), Integer.valueOf((i >> 16) & 255), Integer.valueOf(i & 65535));
    }
}
