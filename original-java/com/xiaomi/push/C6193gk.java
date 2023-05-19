package com.xiaomi.push;

import java.util.Map;

/* renamed from: com.xiaomi.push.gk */
/* loaded from: classes2.dex */
public class C6193gk implements Cloneable {

    /* renamed from: a */
    public static String f21749a = "wcc-ml-test10.bj";

    /* renamed from: b */
    public static final String f21750b = C5974ag.f20998a;

    /* renamed from: c */
    public static String f21751c;

    /* renamed from: a */
    private int f21752a;

    /* renamed from: a */
    private InterfaceC6196gn f21753a;

    /* renamed from: a */
    private boolean f21754a = AbstractC6191gj.f21729a;

    /* renamed from: b */
    private boolean f21755b = true;

    /* renamed from: d */
    private String f21756d;

    /* renamed from: e */
    private String f21757e;

    /* renamed from: f */
    private String f21758f;

    public C6193gk(Map<String, Integer> map, int i, String str, InterfaceC6196gn interfaceC6196gn) {
        m2734a(map, i, str, interfaceC6196gn);
    }

    /* renamed from: a */
    public static final String m2737a() {
        String str = f21751c;
        return str != null ? str : C5971ad.m3796a() ? "sandbox.xmpush.xiaomi.com" : C5971ad.m3794b() ? f21750b : "app.chat.xiaomi.net";
    }

    /* renamed from: a */
    public static final void m2735a(String str) {
        if (C6306l.m1851a(C6469u.m1240a()) && C5971ad.m3794b()) {
            return;
        }
        f21751c = str;
    }

    /* renamed from: a */
    private void m2734a(Map<String, Integer> map, int i, String str, InterfaceC6196gn interfaceC6196gn) {
        this.f21752a = i;
        this.f21756d = str;
        this.f21753a = interfaceC6196gn;
    }

    /* renamed from: a */
    public int m2738a() {
        return this.f21752a;
    }

    /* renamed from: a */
    public void m2733a(boolean z) {
        this.f21754a = z;
    }

    /* renamed from: a */
    public boolean m2736a() {
        return this.f21754a;
    }

    /* renamed from: a */
    public byte[] mo1386a() {
        return null;
    }

    /* renamed from: b */
    public String m2732b() {
        return this.f21758f;
    }

    /* renamed from: b */
    public void m2731b(String str) {
        this.f21758f = str;
    }

    /* renamed from: c */
    public String m2730c() {
        if (this.f21757e == null) {
            this.f21757e = m2737a();
        }
        return this.f21757e;
    }

    /* renamed from: c */
    public void m2729c(String str) {
        this.f21757e = str;
    }
}
