package com.xiaomi.push.service;

import com.xiaomi.push.hv;

/* loaded from: classes2.dex */
/* synthetic */ class cc {

    /* renamed from: a  reason: collision with root package name */
    static final /* synthetic */ int[] f9309a;

    static {
        int[] iArr = new int[hv.values().length];
        f9309a = iArr;
        try {
            iArr[hv.Registration.ordinal()] = 1;
        } catch (NoSuchFieldError unused) {
        }
        try {
            f9309a[hv.UnRegistration.ordinal()] = 2;
        } catch (NoSuchFieldError unused2) {
        }
        try {
            f9309a[hv.Subscription.ordinal()] = 3;
        } catch (NoSuchFieldError unused3) {
        }
        try {
            f9309a[hv.UnSubscription.ordinal()] = 4;
        } catch (NoSuchFieldError unused4) {
        }
        try {
            f9309a[hv.SendMessage.ordinal()] = 5;
        } catch (NoSuchFieldError unused5) {
        }
        try {
            f9309a[hv.AckMessage.ordinal()] = 6;
        } catch (NoSuchFieldError unused6) {
        }
        try {
            f9309a[hv.SetConfig.ordinal()] = 7;
        } catch (NoSuchFieldError unused7) {
        }
        try {
            f9309a[hv.ReportFeedback.ordinal()] = 8;
        } catch (NoSuchFieldError unused8) {
        }
        try {
            f9309a[hv.Notification.ordinal()] = 9;
        } catch (NoSuchFieldError unused9) {
        }
        try {
            f9309a[hv.Command.ordinal()] = 10;
        } catch (NoSuchFieldError unused10) {
        }
    }
}
