package com.ifengyu.intercom.node;

import com.google.protobuf.Message;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;

public class SendDataWrap {
    public Message a;
    public byte[] b;
    public byte[] c;
    private int d;
    private int e;

    @Retention(RetentionPolicy.SOURCE)
    @interface DeviceType {
    }

    private SendDataWrap(int i, Message message, int i2) {
        this.d = i;
        this.a = message;
        this.e = i2;
    }

    private SendDataWrap(int i, byte[] bArr, int i2) {
        this.d = i;
        this.b = bArr;
        this.e = i2;
    }

    private SendDataWrap(int i, Message message, int i2, byte[] bArr) {
        this.d = i;
        this.a = message;
        this.e = i2;
        this.c = bArr;
    }

    public static SendDataWrap a(int i, Message message, int i2) {
        return new SendDataWrap(i, message, i2);
    }

    public static SendDataWrap a(int i, byte[] bArr, int i2) {
        return new SendDataWrap(i, bArr, i2);
    }

    public static SendDataWrap a(byte[] bArr) {
        return new SendDataWrap(1, null, -1, bArr);
    }

    public int a() {
        return this.e;
    }

    public byte[] b() {
        return this.b;
    }

    public int c() {
        return this.d;
    }
}
