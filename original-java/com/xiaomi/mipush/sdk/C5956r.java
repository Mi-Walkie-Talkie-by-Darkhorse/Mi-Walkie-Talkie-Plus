package com.xiaomi.mipush.sdk;

import android.content.Context;
import com.xiaomi.push.C6251ii;
import com.xiaomi.push.C6263iu;
import com.xiaomi.push.EnumC6237hv;
import com.xiaomi.push.InterfaceC6086dl;

/* renamed from: com.xiaomi.mipush.sdk.r */
/* loaded from: classes2.dex */
public class C5956r implements InterfaceC6086dl {

    /* renamed from: a */
    private Context f20972a;

    public C5956r(Context context) {
        this.f20972a = context;
    }

    @Override // com.xiaomi.push.InterfaceC6086dl
    /* renamed from: a */
    public String mo3371a() {
        return C5938b.m3923a(this.f20972a).m3907d();
    }

    @Override // com.xiaomi.push.InterfaceC6086dl
    /* renamed from: a */
    public void mo3370a(C6263iu c6263iu, EnumC6237hv enumC6237hv, C6251ii c6251ii) {
        C5928ao.m3984a(this.f20972a).m3970a((C5928ao) c6263iu, enumC6237hv, c6251ii);
    }
}
