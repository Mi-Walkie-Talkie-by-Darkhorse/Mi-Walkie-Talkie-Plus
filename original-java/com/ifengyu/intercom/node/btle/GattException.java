package com.ifengyu.intercom.node.btle;

/* loaded from: classes2.dex */
public class GattException extends Exception {
    private static final long serialVersionUID = 2358042556323330388L;

    /* renamed from: a  reason: collision with root package name */
    private final int f5872a;

    /* renamed from: b  reason: collision with root package name */
    private final boolean f5873b;

    public GattException(String str) {
        this(str, -1, false);
    }

    public int a() {
        return this.f5872a;
    }

    public boolean b() {
        return this.f5873b;
    }

    public GattException(String str, int i, boolean z) {
        super(str);
        this.f5872a = i;
        this.f5873b = z;
    }

    public GattException(String str, boolean z) {
        this(str, -1, z);
    }
}
