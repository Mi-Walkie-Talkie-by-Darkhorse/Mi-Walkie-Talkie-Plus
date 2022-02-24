package com.xiaomi.mipush.sdk;

import com.xiaomi.push.hv;

/* loaded from: classes2.dex */
/* synthetic */ class an {

    /* renamed from: a  reason: collision with root package name */
    static final /* synthetic */ int[] f8688a;

    static {
        int[] iArr = new int[hv.values().length];
        f8688a = iArr;
        try {
            iArr[hv.SendMessage.ordinal()] = 1;
        } catch (NoSuchFieldError unused) {
        }
        try {
            f8688a[hv.Registration.ordinal()] = 2;
        } catch (NoSuchFieldError unused2) {
        }
        try {
            f8688a[hv.UnRegistration.ordinal()] = 3;
        } catch (NoSuchFieldError unused3) {
        }
        try {
            f8688a[hv.Subscription.ordinal()] = 4;
        } catch (NoSuchFieldError unused4) {
        }
        try {
            f8688a[hv.UnSubscription.ordinal()] = 5;
        } catch (NoSuchFieldError unused5) {
        }
        try {
            f8688a[hv.Command.ordinal()] = 6;
        } catch (NoSuchFieldError unused6) {
        }
        try {
            f8688a[hv.Notification.ordinal()] = 7;
        } catch (NoSuchFieldError unused7) {
        }
    }
}
