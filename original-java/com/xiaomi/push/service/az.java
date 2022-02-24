package com.xiaomi.push.service;

import com.xiaomi.push.ib;
import com.xiaomi.push.ic;

/* loaded from: classes2.dex */
/* synthetic */ class az {

    /* renamed from: a  reason: collision with root package name */
    static final /* synthetic */ int[] f9261a;

    /* renamed from: b  reason: collision with root package name */
    static final /* synthetic */ int[] f9262b;

    static {
        int[] iArr = new int[ic.values().length];
        f9262b = iArr;
        try {
            iArr[ic.INT.ordinal()] = 1;
        } catch (NoSuchFieldError unused) {
        }
        try {
            f9262b[ic.LONG.ordinal()] = 2;
        } catch (NoSuchFieldError unused2) {
        }
        try {
            f9262b[ic.STRING.ordinal()] = 3;
        } catch (NoSuchFieldError unused3) {
        }
        try {
            f9262b[ic.BOOLEAN.ordinal()] = 4;
        } catch (NoSuchFieldError unused4) {
        }
        int[] iArr2 = new int[ib.values().length];
        f9261a = iArr2;
        try {
            iArr2[ib.MISC_CONFIG.ordinal()] = 1;
        } catch (NoSuchFieldError unused5) {
        }
        try {
            f9261a[ib.PLUGIN_CONFIG.ordinal()] = 2;
        } catch (NoSuchFieldError unused6) {
        }
    }
}
