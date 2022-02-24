package com.ifengyu.intercom.lite.old;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: LiteChannelSettingActivity.java */
/* loaded from: classes2.dex */
public class w implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ LiteChannelSettingActivity f5786a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public w(LiteChannelSettingActivity liteChannelSettingActivity) {
        this.f5786a = liteChannelSettingActivity;
    }

    @Override // java.lang.Runnable
    public void run() {
        this.f5786a.v();
        this.f5786a.z();
    }
}
