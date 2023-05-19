package com.ifengyu.blelib.p152c;

import com.google.protobuf.Message;
import java.util.List;

/* renamed from: com.ifengyu.blelib.c.c */
/* loaded from: classes2.dex */
public class Commend {

    /* renamed from: a */
    private int f12056a;

    /* renamed from: b */
    private Message f12057b;

    /* renamed from: c */
    private List<Message> f12058c;

    /* renamed from: d */
    private int f12059d;

    public Commend(int i, Message message) {
        this.f12056a = i;
        this.f12057b = message;
    }

    /* renamed from: a */
    public int m14357a() {
        return this.f12056a;
    }

    /* renamed from: b */
    public Message m14356b() {
        return this.f12057b;
    }

    /* renamed from: c */
    public List<Message> m14355c() {
        return this.f12058c;
    }

    /* renamed from: d */
    public int m14354d() {
        return this.f12059d;
    }

    /* renamed from: e */
    public void m14353e(List<Message> list) {
        this.f12058c = list;
    }

    /* renamed from: f */
    public void m14352f(int i) {
        this.f12059d = i;
    }

    public String toString() {
        return "Commend{commendId=" + this.f12056a + ", message=" + this.f12057b + ", responseCode=" + this.f12059d + '}';
    }

    public Commend(int i, Message message, int i2) {
        this.f12056a = i;
        this.f12057b = message;
        this.f12059d = i2;
    }
}
