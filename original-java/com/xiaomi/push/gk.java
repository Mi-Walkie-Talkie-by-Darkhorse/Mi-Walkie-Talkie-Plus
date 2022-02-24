package com.xiaomi.push;

import java.util.Map;

/* loaded from: classes2.dex */
public class gk implements Cloneable {

    /* renamed from: a  reason: collision with root package name */
    public static String f8993a = "wcc-ml-test10.bj";

    /* renamed from: b  reason: collision with root package name */
    public static final String f8994b = ag.f8735a;

    /* renamed from: c  reason: collision with root package name */
    public static String f8995c = null;

    /* renamed from: a  reason: collision with other field name */
    private int f439a;

    /* renamed from: a  reason: collision with other field name */
    private gn f440a;

    /* renamed from: a  reason: collision with other field name */
    private boolean f441a = gj.f424a;

    /* renamed from: b  reason: collision with other field name */
    private boolean f442b = true;
    private String d;
    private String e;
    private String f;

    public gk(Map<String, Integer> map, int i, String str, gn gnVar) {
        a(map, i, str, gnVar);
    }

    public static final String a() {
        String str = f8995c;
        return str != null ? str : ad.m67a() ? "sandbox.xmpush.xiaomi.com" : ad.b() ? f8994b : "app.chat.xiaomi.net";
    }

    public static final void a(String str) {
        if (!l.m528a(u.m658a()) || !ad.b()) {
            f8995c = str;
        }
    }

    private void a(Map<String, Integer> map, int i, String str, gn gnVar) {
        this.f439a = i;
        this.d = str;
        this.f440a = gnVar;
    }

    /* renamed from: a  reason: collision with other method in class */
    public int mo321a() {
        return this.f439a;
    }

    public void a(boolean z) {
        this.f441a = z;
    }

    /* renamed from: a  reason: collision with other method in class */
    public boolean m322a() {
        return this.f441a;
    }

    /* renamed from: a  reason: collision with other method in class */
    public byte[] m323a() {
        return null;
    }

    public String b() {
        return this.f;
    }

    public void b(String str) {
        this.f = str;
    }

    public String c() {
        if (this.e == null) {
            this.e = a();
        }
        return this.e;
    }

    public void c(String str) {
        this.e = str;
    }
}
