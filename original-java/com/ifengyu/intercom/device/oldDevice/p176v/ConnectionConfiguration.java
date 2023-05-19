package com.ifengyu.intercom.device.oldDevice.p176v;

import com.ifengyu.intercom.p214p.MiTalkClientUtil;

/* renamed from: com.ifengyu.intercom.device.oldDevice.v.a */
/* loaded from: classes2.dex */
public class ConnectionConfiguration {

    /* renamed from: a */
    private String f13626a;

    /* renamed from: b */
    private String f13627b;

    /* renamed from: c */
    private boolean f13628c;

    /* renamed from: d */
    private String f13629d;

    /* renamed from: e */
    private int f13630e;

    /* renamed from: f */
    private int f13631f;

    private ConnectionConfiguration(int i, String str, String str2, boolean z, String str3, int i2, int i3) {
        this.f13626a = str;
        this.f13627b = str2;
        this.f13628c = z;
        this.f13629d = str3;
        this.f13630e = i2;
        this.f13631f = i3;
    }

    /* renamed from: a */
    public String m12506a() {
        return this.f13627b;
    }

    /* renamed from: b */
    public int m12505b() {
        return this.f13631f;
    }

    /* renamed from: c */
    public String m12504c() {
        return this.f13629d;
    }

    /* renamed from: d */
    public int m12503d() {
        return this.f13630e;
    }

    /* renamed from: e */
    public String m12502e() {
        return this.f13626a;
    }

    /* renamed from: f */
    public boolean m12501f() {
        return this.f13628c;
    }

    /* renamed from: g */
    public void m12500g(boolean z) {
        this.f13628c = z;
    }

    /* renamed from: h */
    public void m12499h(String str) {
        this.f13626a = str;
    }

    public ConnectionConfiguration(String str, String str2, String str3, int i) {
        this(MiTalkClientUtil.f14440a, str, str2, false, str3, i, 0);
    }

    public ConnectionConfiguration(String str, String str2, String str3, int i, int i2) {
        this(MiTalkClientUtil.f14440a, str, str2, false, str3, i, i2);
    }
}
