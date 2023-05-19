package com.ifengyu.intercom.device.oldDevice.p175u;

import com.google.protobuf.Message;

/* renamed from: com.ifengyu.intercom.device.oldDevice.u.a */
/* loaded from: classes2.dex */
public class BaseCommand {

    /* renamed from: a */
    private final int f13624a;

    /* renamed from: b */
    private final Message f13625b;

    public BaseCommand(int i, Message message) {
        this.f13624a = i;
        this.f13625b = message;
    }

    /* renamed from: a */
    public int m12508a() {
        return this.f13624a;
    }

    /* renamed from: b */
    public Message m12507b() {
        return this.f13625b;
    }

    public String toString() {
        return this.f13625b.toString();
    }
}
