package com.xiaomi.push.service;

import com.xiaomi.push.ak;

/* loaded from: classes2.dex */
class ak extends ak.a {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ int f9239a;

    /* renamed from: a  reason: collision with other field name */
    final /* synthetic */ au f915a;

    /* renamed from: a  reason: collision with other field name */
    final /* synthetic */ String f916a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public ak(String str, au auVar, int i) {
        this.f916a = str;
        this.f915a = auVar;
        this.f9239a = i;
    }

    @Override // com.xiaomi.push.ak.a
    /* renamed from: a */
    public String mo168a() {
        return this.f916a;
    }

    @Override // java.lang.Runnable
    public void run() {
        this.f915a.a(this.f9239a);
    }
}
