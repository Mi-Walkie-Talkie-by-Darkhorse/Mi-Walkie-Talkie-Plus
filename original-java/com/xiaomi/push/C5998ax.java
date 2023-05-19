package com.xiaomi.push;

import android.content.Context;
import com.xiaomi.channel.commonutils.logger.AbstractC5876b;
import java.lang.reflect.Method;

/* renamed from: com.xiaomi.push.ax */
/* loaded from: classes2.dex */
class C5998ax implements InterfaceC5993at {

    /* renamed from: a */
    private Context f21053a;

    /* renamed from: a */
    private Class<?> f21054a;

    /* renamed from: a */
    private Object f21055a;

    /* renamed from: a */
    private Method f21056a = null;

    /* renamed from: b */
    private Method f21057b = null;

    /* renamed from: c */
    private Method f21058c = null;

    /* renamed from: d */
    private Method f21059d = null;

    public C5998ax(Context context) {
        this.f21053a = context;
        m3733a(context);
    }

    /* renamed from: a */
    private String m3732a(Context context, Method method) {
        Object obj = this.f21055a;
        if (obj == null || method == null) {
            return null;
        }
        try {
            Object invoke = method.invoke(obj, context);
            if (invoke != null) {
                return (String) invoke;
            }
            return null;
        } catch (Exception e) {
            AbstractC5876b.m4144a("miui invoke error", e);
            return null;
        }
    }

    /* renamed from: a */
    private void m3733a(Context context) {
        try {
            Class<?> m1234a = C6469u.m1234a(context, "com.android.id.impl.IdProviderImpl");
            this.f21054a = m1234a;
            this.f21055a = m1234a.newInstance();
            this.f21056a = this.f21054a.getMethod("getUDID", Context.class);
            this.f21057b = this.f21054a.getMethod("getOAID", Context.class);
            this.f21058c = this.f21054a.getMethod("getVAID", Context.class);
            this.f21059d = this.f21054a.getMethod("getAAID", Context.class);
        } catch (Exception e) {
            AbstractC5876b.m4144a("miui load class error", e);
        }
    }

    @Override // com.xiaomi.push.InterfaceC5993at
    /* renamed from: a */
    public String mo3684a() {
        return m3732a(this.f21053a, this.f21057b);
    }

    @Override // com.xiaomi.push.InterfaceC5993at
    /* renamed from: a */
    public boolean mo3683a() {
        return (this.f21054a == null || this.f21055a == null) ? false : true;
    }
}
