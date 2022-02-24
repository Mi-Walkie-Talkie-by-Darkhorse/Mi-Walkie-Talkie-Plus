package com.ifengyu.intercom.node;

import com.google.protobuf.Message;

/* compiled from: BaseCommand.java */
/* loaded from: classes2.dex */
public class a {

    /* renamed from: a  reason: collision with root package name */
    private final int f5841a;

    /* renamed from: b  reason: collision with root package name */
    private final Message f5842b;

    public a(int i, Message message) {
        this.f5841a = i;
        this.f5842b = message;
    }

    public int a() {
        return this.f5841a;
    }

    public Message b() {
        return this.f5842b;
    }

    public String toString() {
        return this.f5842b.toString();
    }
}
