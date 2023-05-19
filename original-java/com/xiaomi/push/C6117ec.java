package com.xiaomi.push;

import android.content.Context;
import android.content.Intent;
import android.text.TextUtils;
import com.xiaomi.push.service.C6350aj;
import java.util.HashMap;

/* renamed from: com.xiaomi.push.ec */
/* loaded from: classes2.dex */
public final class C6117ec {

    /* renamed from: a */
    private static volatile C6117ec f21427a;

    /* renamed from: a */
    private int f21428a;

    /* renamed from: a */
    private Context f21429a;

    /* renamed from: a */
    private InterfaceC6121eg f21430a;

    /* renamed from: a */
    private String f21431a;

    /* renamed from: a */
    private HashMap<EnumC6119ee, InterfaceC6120ef> f21432a;

    /* renamed from: b */
    private String f21433b;

    private C6117ec(Context context) {
        HashMap<EnumC6119ee, InterfaceC6120ef> hashMap = new HashMap<>();
        this.f21432a = hashMap;
        this.f21429a = context;
        hashMap.put(EnumC6119ee.SERVICE_ACTION, new C6123ei());
        this.f21432a.put(EnumC6119ee.SERVICE_COMPONENT, new C6124ej());
        this.f21432a.put(EnumC6119ee.ACTIVITY, new C6115ea());
        this.f21432a.put(EnumC6119ee.PROVIDER, new C6122eh());
    }

    /* renamed from: a */
    public static C6117ec m3120a(Context context) {
        if (f21427a == null) {
            synchronized (C6117ec.class) {
                if (f21427a == null) {
                    f21427a = new C6117ec(context);
                }
            }
        }
        return f21427a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: a */
    public void m3115a(EnumC6119ee enumC6119ee, Context context, C6116eb c6116eb) {
        this.f21432a.get(enumC6119ee).mo3102a(context, c6116eb);
    }

    /* renamed from: a */
    public static boolean m3119a(Context context) {
        return C6350aj.m1673a(context, context.getPackageName());
    }

    /* renamed from: a */
    public int m3124a() {
        return this.f21428a;
    }

    /* renamed from: a */
    public InterfaceC6121eg m3123a() {
        return this.f21430a;
    }

    /* renamed from: a */
    public String m3122a() {
        return this.f21431a;
    }

    /* renamed from: a */
    public void m3121a(int i) {
        this.f21428a = i;
    }

    /* renamed from: a */
    public void m3118a(Context context, String str, int i, String str2, String str3) {
        if (context != null && !TextUtils.isEmpty(str) && !TextUtils.isEmpty(str2) && !TextUtils.isEmpty(str3)) {
            m3121a(i);
            C5978ak.m3784a(this.f21429a).m3775a(new RunnableC6118ed(this, str, context, str2, str3));
            return;
        }
        C6112dy.m3151a(context, "" + str, 1008, "A receive a incorrect message");
    }

    /* renamed from: a */
    public void m3116a(EnumC6119ee enumC6119ee, Context context, Intent intent, String str) {
        if (enumC6119ee != null) {
            this.f21432a.get(enumC6119ee).mo3103a(context, intent, str);
        } else {
            C6112dy.m3151a(context, "null", 1008, "A receive a incorrect message with empty type");
        }
    }

    /* renamed from: a */
    public void m3114a(InterfaceC6121eg interfaceC6121eg) {
        this.f21430a = interfaceC6121eg;
    }

    /* renamed from: a */
    public void m3113a(String str) {
        this.f21431a = str;
    }

    /* renamed from: a */
    public void m3112a(String str, String str2, int i, InterfaceC6121eg interfaceC6121eg) {
        m3113a(str);
        m3110b(str2);
        m3121a(i);
        m3114a(interfaceC6121eg);
    }

    /* renamed from: b */
    public String m3111b() {
        return this.f21433b;
    }

    /* renamed from: b */
    public void m3110b(String str) {
        this.f21433b = str;
    }
}
