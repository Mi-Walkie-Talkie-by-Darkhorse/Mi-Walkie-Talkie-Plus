package com.ifengyu.intercom.node;

import com.google.protobuf.Message;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;

/* loaded from: classes2.dex */
public class SendDataWrap {

    /* renamed from: a  reason: collision with root package name */
    private int f5838a;

    /* renamed from: b  reason: collision with root package name */
    private int f5839b;

    /* renamed from: c  reason: collision with root package name */
    public Message f5840c;
    public byte[] d;
    public byte[] e;

    @Retention(RetentionPolicy.SOURCE)
    /* loaded from: classes2.dex */
    @interface DeviceType {
    }

    private SendDataWrap(int i, Message message, int i2) {
        this.f5838a = i;
        this.f5840c = message;
        this.f5839b = i2;
    }

    public static SendDataWrap a(int i, Message message, int i2) {
        return new SendDataWrap(i, message, i2);
    }

    public int b() {
        return this.f5838a;
    }

    public byte[] c() {
        return this.d;
    }

    public static SendDataWrap a(int i, byte[] bArr, int i2) {
        return new SendDataWrap(i, bArr, i2);
    }

    public static SendDataWrap a(byte[] bArr) {
        return new SendDataWrap(1, null, -1, bArr);
    }

    public int a() {
        return this.f5839b;
    }

    private SendDataWrap(int i, byte[] bArr, int i2) {
        this.f5838a = i;
        this.d = bArr;
        this.f5839b = i2;
    }

    private SendDataWrap(int i, Message message, int i2, byte[] bArr) {
        this.f5838a = i;
        this.f5840c = message;
        this.f5839b = i2;
        this.e = bArr;
    }
}
