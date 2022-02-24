package com.ifengyu.intercom.ui.activity;

import com.ifengyu.intercom.lite.database.LiteDatabase;
import com.ifengyu.intercom.node.ConnectionConfiguration;

/* compiled from: SelectDeviceActivity.java */
/* loaded from: classes2.dex */
class k0 implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ ConnectionConfiguration f6234a;

    /* renamed from: b  reason: collision with root package name */
    final /* synthetic */ SelectDeviceActivity f6235b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public k0(SelectDeviceActivity selectDeviceActivity, ConnectionConfiguration connectionConfiguration) {
        this.f6235b = selectDeviceActivity;
        this.f6234a = connectionConfiguration;
    }

    @Override // java.lang.Runnable
    public void run() {
        LiteDatabase.a(this.f6235b.getApplicationContext()).n().a(this.f6234a.a());
    }
}
