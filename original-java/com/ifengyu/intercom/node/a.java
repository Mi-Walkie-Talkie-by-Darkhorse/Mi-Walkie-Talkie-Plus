package com.ifengyu.intercom.node;

import com.google.protobuf.Message;

/* compiled from: BaseCommand */
public class a {
    private final int a;
    private final Message b;

    public a(int i, Message message) {
        this.a = i;
        this.b = message;
    }

    public int a() {
        return this.a;
    }

    public Message b() {
        return this.b;
    }

    public String toString() {
        return this.b.toString();
    }
}
