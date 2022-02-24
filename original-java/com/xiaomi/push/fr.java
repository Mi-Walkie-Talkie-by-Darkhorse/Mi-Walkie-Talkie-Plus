package com.xiaomi.push;

import com.xiaomi.push.service.bd;

/* loaded from: classes2.dex */
/* synthetic */ class fr {

    /* renamed from: a  reason: collision with root package name */
    static final /* synthetic */ int[] f8959a;

    static {
        int[] iArr = new int[bd.c.values().length];
        f8959a = iArr;
        try {
            iArr[bd.c.unbind.ordinal()] = 1;
        } catch (NoSuchFieldError unused) {
        }
        try {
            f8959a[bd.c.binding.ordinal()] = 2;
        } catch (NoSuchFieldError unused2) {
        }
        try {
            f8959a[bd.c.binded.ordinal()] = 3;
        } catch (NoSuchFieldError unused3) {
        }
    }
}
