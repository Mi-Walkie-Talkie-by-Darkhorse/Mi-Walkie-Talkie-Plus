package com.ifengyu.intercom.ui.activity;

import com.ifengyu.intercom.lite.database.LiteDatabase;
import com.ifengyu.intercom.node.ConnectionConfiguration;

/* compiled from: SelectDeviceActivity.java */
/* loaded from: classes2.dex */
class j0 implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ ConnectionConfiguration f6231a;

    /* renamed from: b  reason: collision with root package name */
    final /* synthetic */ SelectDeviceActivity f6232b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public j0(SelectDeviceActivity selectDeviceActivity, ConnectionConfiguration connectionConfiguration) {
        this.f6232b = selectDeviceActivity;
        this.f6231a = connectionConfiguration;
    }

    @Override // java.lang.Runnable
    public void run() {
        LiteDatabase.a(this.f6232b.getApplicationContext()).n().a(this.f6231a.a());
    }
}
