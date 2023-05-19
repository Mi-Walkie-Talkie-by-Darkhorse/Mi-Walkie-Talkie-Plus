package com.xiaomi.push.service;

import com.xiaomi.push.EnumC6244ib;
import com.xiaomi.push.EnumC6245ic;

/* renamed from: com.xiaomi.push.service.az */
/* loaded from: classes2.dex */
/* synthetic */ class C6375az {

    /* renamed from: a */
    static final /* synthetic */ int[] f23011a;

    /* renamed from: b */
    static final /* synthetic */ int[] f23012b;

    static {
        int[] iArr = new int[EnumC6245ic.values().length];
        f23012b = iArr;
        try {
            iArr[EnumC6245ic.INT.ordinal()] = 1;
        } catch (NoSuchFieldError unused) {
        }
        try {
            f23012b[EnumC6245ic.LONG.ordinal()] = 2;
        } catch (NoSuchFieldError unused2) {
        }
        try {
            f23012b[EnumC6245ic.STRING.ordinal()] = 3;
        } catch (NoSuchFieldError unused3) {
        }
        try {
            f23012b[EnumC6245ic.BOOLEAN.ordinal()] = 4;
        } catch (NoSuchFieldError unused4) {
        }
        int[] iArr2 = new int[EnumC6244ib.values().length];
        f23011a = iArr2;
        try {
            iArr2[EnumC6244ib.MISC_CONFIG.ordinal()] = 1;
        } catch (NoSuchFieldError unused5) {
        }
        try {
            f23011a[EnumC6244ib.PLUGIN_CONFIG.ordinal()] = 2;
        } catch (NoSuchFieldError unused6) {
        }
    }
}
