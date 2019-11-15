package com.amap.api.mapcore.util;

import android.content.Context;
import java.util.Map;

/* compiled from: LocationRequest */
public final class jb extends hq {
    Map<String, String> c = null;
    String d = "";
    byte[] e = null;
    byte[] f = null;
    boolean g = false;
    String k = null;
    Map<String, String> l = null;
    boolean m = false;

    public jb(Context context, fx fxVar) {
        super(context, fxVar);
    }

    public final Map<String, String> a() {
        return this.c;
    }

    public final void a(String str) {
        this.k = str;
    }

    public final void a(Map<String, String> map) {
        this.l = map;
    }

    public final Map<String, String> b() {
        return this.l;
    }

    public final void b(String str) {
        this.d = str;
    }

    public final void b(Map<String, String> map) {
        this.c = map;
    }

    public final void b(byte[] bArr) {
        this.e = bArr;
    }

    public final String c() {
        return this.d;
    }

    public final void d() {
        this.g = true;
    }

    public final byte[] e() {
        return this.e;
    }

    public final byte[] f() {
        return this.f;
    }

    public final boolean i() {
        return this.g;
    }

    public final String k() {
        return this.k;
    }

    /* access modifiers changed from: protected */
    public final boolean l() {
        return this.m;
    }

    public final void o() {
        this.m = true;
    }
}
