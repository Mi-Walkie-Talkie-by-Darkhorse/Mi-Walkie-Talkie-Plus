package com.ifengyu.blelib.d;

import androidx.annotation.NonNull;
import com.google.protobuf.Message;

/* compiled from: Commend.java */
/* loaded from: classes.dex */
public class c {

    /* renamed from: a  reason: collision with root package name */
    private int f5196a;

    /* renamed from: b  reason: collision with root package name */
    private Message f5197b;

    public c(int i, Message message) {
        this.f5196a = i;
        this.f5197b = message;
    }

    public int a() {
        return this.f5196a;
    }

    public Message b() {
        return this.f5197b;
    }

    @NonNull
    public String toString() {
        return "Commend{commendId=" + this.f5196a + ", message=" + this.f5197b + '}';
    }
}
