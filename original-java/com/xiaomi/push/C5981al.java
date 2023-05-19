package com.xiaomi.push;

import android.content.SharedPreferences;
import com.xiaomi.push.C5978ak;

/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: com.xiaomi.push.al */
/* loaded from: classes2.dex */
public class C5981al extends C5978ak.RunnableC5980b {

    /* renamed from: a */
    final /* synthetic */ C5978ak f21007a;

    /* renamed from: a */
    final /* synthetic */ String f21008a;

    /* renamed from: a */
    final /* synthetic */ boolean f21009a;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C5981al(C5978ak c5978ak, C5978ak.AbstractRunnableC5979a abstractRunnableC5979a, boolean z, String str) {
        super(abstractRunnableC5979a);
        this.f21007a = c5978ak;
        this.f21009a = z;
        this.f21008a = str;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.xiaomi.push.C5978ak.RunnableC5980b
    /* renamed from: a */
    public void mo3770a() {
        super.mo3770a();
    }

    @Override // com.xiaomi.push.C5978ak.RunnableC5980b
    /* renamed from: b */
    void mo3769b() {
        SharedPreferences sharedPreferences;
        if (this.f21009a) {
            return;
        }
        sharedPreferences = this.f21007a.f21002a;
        sharedPreferences.edit().putLong(this.f21008a, System.currentTimeMillis()).commit();
    }
}
