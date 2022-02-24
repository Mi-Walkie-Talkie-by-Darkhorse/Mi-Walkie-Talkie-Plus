package com.xiaomi.push;

import android.content.SharedPreferences;
import com.xiaomi.push.ak;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public class al extends ak.b {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ ak f8739a;

    /* renamed from: a  reason: collision with other field name */
    final /* synthetic */ String f89a;

    /* renamed from: a  reason: collision with other field name */
    final /* synthetic */ boolean f90a;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public al(ak akVar, ak.a aVar, boolean z, String str) {
        super(aVar);
        this.f8739a = akVar;
        this.f90a = z;
        this.f89a = str;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.xiaomi.push.ak.b
    public void a() {
        super.a();
    }

    @Override // com.xiaomi.push.ak.b
    void b() {
        SharedPreferences sharedPreferences;
        if (!this.f90a) {
            sharedPreferences = this.f8739a.f85a;
            sharedPreferences.edit().putLong(this.f89a, System.currentTimeMillis()).commit();
        }
    }
}
