package com.xiaomi.push.service;

import com.xiaomi.push.EnumC6237hv;

/* renamed from: com.xiaomi.push.service.cc */
/* loaded from: classes2.dex */
/* synthetic */ class C6417cc {

    /* renamed from: a */
    static final /* synthetic */ int[] f23153a;

    static {
        int[] iArr = new int[EnumC6237hv.values().length];
        f23153a = iArr;
        try {
            iArr[EnumC6237hv.Registration.ordinal()] = 1;
        } catch (NoSuchFieldError unused) {
        }
        try {
            f23153a[EnumC6237hv.UnRegistration.ordinal()] = 2;
        } catch (NoSuchFieldError unused2) {
        }
        try {
            f23153a[EnumC6237hv.Subscription.ordinal()] = 3;
        } catch (NoSuchFieldError unused3) {
        }
        try {
            f23153a[EnumC6237hv.UnSubscription.ordinal()] = 4;
        } catch (NoSuchFieldError unused4) {
        }
        try {
            f23153a[EnumC6237hv.SendMessage.ordinal()] = 5;
        } catch (NoSuchFieldError unused5) {
        }
        try {
            f23153a[EnumC6237hv.AckMessage.ordinal()] = 6;
        } catch (NoSuchFieldError unused6) {
        }
        try {
            f23153a[EnumC6237hv.SetConfig.ordinal()] = 7;
        } catch (NoSuchFieldError unused7) {
        }
        try {
            f23153a[EnumC6237hv.ReportFeedback.ordinal()] = 8;
        } catch (NoSuchFieldError unused8) {
        }
        try {
            f23153a[EnumC6237hv.Notification.ordinal()] = 9;
        } catch (NoSuchFieldError unused9) {
        }
        try {
            f23153a[EnumC6237hv.Command.ordinal()] = 10;
        } catch (NoSuchFieldError unused10) {
        }
    }
}
