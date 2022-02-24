package com.xiaomi.push;

import java.io.ByteArrayInputStream;
import java.io.IOException;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.util.zip.GZIPInputStream;

/* loaded from: classes2.dex */
public class gc {

    /* renamed from: a  reason: collision with root package name */
    public static final byte[] f8979a = {80, 85, 83, 72};

    /* renamed from: a  reason: collision with other field name */
    private byte f410a;

    /* renamed from: a  reason: collision with other field name */
    private int f411a;

    /* renamed from: a  reason: collision with other field name */
    private short f412a;

    /* renamed from: b  reason: collision with root package name */
    private byte[] f8980b;

    /* loaded from: classes2.dex */
    public static class a {

        /* renamed from: a  reason: collision with root package name */
        public static final c f8981a = new c();

        /* renamed from: a  reason: collision with other field name */
        public static final d f413a = new d();

        public static byte[] a(byte[] bArr) {
            return a(bArr, f413a);
        }

        public static byte[] a(byte[] bArr, b bVar) {
            if (!gc.m309a(bArr)) {
                return bArr;
            }
            gc a2 = gc.a(bArr);
            return (a2.f410a == 0 || a2.f410a != bVar.a()) ? a2.f8980b : bVar.a(a2.f8980b, a2.f411a);
        }
    }

    /* loaded from: classes2.dex */
    public interface b {
        byte a();

        byte[] a(byte[] bArr, int i);
    }

    /* loaded from: classes2.dex */
    public static final class c {
    }

    /* loaded from: classes2.dex */
    public static final class d implements b {
        @Override // com.xiaomi.push.gc.b
        public byte a() {
            return (byte) 2;
        }

        @Override // com.xiaomi.push.gc.b
        public byte[] a(byte[] bArr, int i) {
            Throwable th;
            GZIPInputStream gZIPInputStream = null;
            try {
                GZIPInputStream gZIPInputStream2 = new GZIPInputStream(new ByteArrayInputStream(bArr), i);
                try {
                    byte[] bArr2 = new byte[i];
                    gZIPInputStream2.read(bArr2);
                    try {
                        gZIPInputStream2.close();
                    } catch (IOException unused) {
                    }
                    return bArr2;
                } catch (IOException unused2) {
                    gZIPInputStream = gZIPInputStream2;
                    if (gZIPInputStream != null) {
                        try {
                            gZIPInputStream.close();
                        } catch (IOException unused3) {
                        }
                    }
                    return bArr;
                } catch (Throwable th2) {
                    th = th2;
                    gZIPInputStream = gZIPInputStream2;
                    if (gZIPInputStream != null) {
                        try {
                            gZIPInputStream.close();
                        } catch (IOException unused4) {
                        }
                    }
                    throw th;
                }
            } catch (IOException unused5) {
            } catch (Throwable th3) {
                th = th3;
            }
        }
    }

    protected gc(byte b2, int i, byte[] bArr) {
        this((short) 1, b2, i, bArr);
    }

    protected gc(short s, byte b2, int i, byte[] bArr) {
        this.f412a = (short) 1;
        this.f412a = s;
        this.f410a = b2;
        this.f411a = i;
        this.f8980b = bArr;
    }

    public static gc a(byte b2, int i, byte[] bArr) {
        return new gc(b2, i, bArr);
    }

    public static gc a(short s, byte b2, int i, byte[] bArr) {
        return new gc(s, b2, i, bArr);
    }

    public static gc a(byte[] bArr) {
        if (!m309a(bArr)) {
            return a((byte) 0, bArr.length, bArr);
        }
        ByteBuffer order = ByteBuffer.wrap(bArr).order(ByteOrder.BIG_ENDIAN);
        order.getInt();
        short s = order.getShort();
        byte b2 = order.get();
        int i = order.getInt();
        byte[] bArr2 = new byte[order.getInt()];
        order.get(bArr2);
        return a(s, b2, i, bArr2);
    }

    /* renamed from: a  reason: collision with other method in class */
    public static boolean m309a(byte[] bArr) {
        byte[] bArr2 = f8979a;
        return a(bArr2, bArr, bArr2.length);
    }

    public static boolean a(byte[] bArr, byte[] bArr2, int i) {
        if (bArr.length < i || bArr2.length < i) {
            return false;
        }
        for (int i2 = 0; i2 < i; i2++) {
            if (bArr[i2] != bArr2[i2]) {
                return false;
            }
        }
        return true;
    }
}
