package com.xiaomi.push;

import android.content.Context;
import com.xiaomi.channel.commonutils.logger.b;
import java.lang.reflect.Method;

/* loaded from: classes2.dex */
class ax implements at {

    /* renamed from: a  reason: collision with root package name */
    private Context f8756a;

    /* renamed from: a  reason: collision with other field name */
    private Class<?> f113a;

    /* renamed from: a  reason: collision with other field name */
    private Object f114a;

    /* renamed from: a  reason: collision with other field name */
    private Method f115a = null;

    /* renamed from: b  reason: collision with root package name */
    private Method f8757b = null;

    /* renamed from: c  reason: collision with root package name */
    private Method f8758c = null;
    private Method d = null;

    public ax(Context context) {
        this.f8756a = context;
        a(context);
    }

    private String a(Context context, Method method) {
        Object obj = this.f114a;
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
            b.a("miui invoke error", e);
            return null;
        }
    }

    private void a(Context context) {
        try {
            Class<?> a2 = u.a(context, "com.android.id.impl.IdProviderImpl");
            this.f113a = a2;
            this.f114a = a2.newInstance();
            this.f115a = this.f113a.getMethod("getUDID", Context.class);
            this.f8757b = this.f113a.getMethod("getOAID", Context.class);
            this.f8758c = this.f113a.getMethod("getVAID", Context.class);
            this.d = this.f113a.getMethod("getAAID", Context.class);
        } catch (Exception e) {
            b.a("miui load class error", e);
        }
    }

    @Override // com.xiaomi.push.at
    /* renamed from: a */
    public String mo92a() {
        return a(this.f8756a, this.f8757b);
    }

    @Override // com.xiaomi.push.at
    /* renamed from: a  reason: collision with other method in class */
    public boolean mo92a() {
        return (this.f113a == null || this.f114a == null) ? false : true;
    }
}
