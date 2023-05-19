package com.xiaomi.push;

import java.io.ByteArrayInputStream;
import java.io.IOException;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.util.zip.GZIPInputStream;

/* renamed from: com.xiaomi.push.gc */
/* loaded from: classes2.dex */
public class C6179gc {

    /* renamed from: a */
    public static final byte[] f21704a = {80, 85, 83, 72};

    /* renamed from: a */
    private byte f21705a;

    /* renamed from: a */
    private int f21706a;

    /* renamed from: a */
    private short f21707a;

    /* renamed from: b */
    private byte[] f21708b;

    /* renamed from: com.xiaomi.push.gc$a */
    /* loaded from: classes2.dex */
    public static class C6180a {

        /* renamed from: a */
        public static final C6182c f21709a = new C6182c();

        /* renamed from: a */
        public static final C6183d f21710a = new C6183d();

        /* renamed from: a */
        public static byte[] m2783a(byte[] bArr) {
            return m2782a(bArr, f21710a);
        }

        /* renamed from: a */
        public static byte[] m2782a(byte[] bArr, InterfaceC6181b interfaceC6181b) {
            if (C6179gc.m2785a(bArr)) {
                C6179gc m2786a = C6179gc.m2786a(bArr);
                return (m2786a.f21705a == 0 || m2786a.f21705a != interfaceC6181b.mo2781a()) ? m2786a.f21708b : interfaceC6181b.mo2780a(m2786a.f21708b, m2786a.f21706a);
            }
            return bArr;
        }
    }

    /* renamed from: com.xiaomi.push.gc$b */
    /* loaded from: classes2.dex */
    public interface InterfaceC6181b {
        /* renamed from: a */
        byte mo2781a();

        /* renamed from: a */
        byte[] mo2780a(byte[] bArr, int i);
    }

    /* renamed from: com.xiaomi.push.gc$c */
    /* loaded from: classes2.dex */
    public static final class C6182c {
    }

    /* renamed from: com.xiaomi.push.gc$d */
    /* loaded from: classes2.dex */
    public static final class C6183d implements InterfaceC6181b {
        @Override // com.xiaomi.push.C6179gc.InterfaceC6181b
        /* renamed from: a */
        public byte mo2781a() {
            return (byte) 2;
        }

        @Override // com.xiaomi.push.C6179gc.InterfaceC6181b
        /* renamed from: a */
        public byte[] mo2780a(byte[] bArr, int i) {
            GZIPInputStream gZIPInputStream;
            GZIPInputStream gZIPInputStream2 = null;
            try {
                gZIPInputStream = new GZIPInputStream(new ByteArrayInputStream(bArr), i);
            } catch (IOException unused) {
            } catch (Throwable th) {
                th = th;
            }
            try {
                byte[] bArr2 = new byte[i];
                gZIPInputStream.read(bArr2);
                try {
                    gZIPInputStream.close();
                } catch (IOException unused2) {
                }
                return bArr2;
            } catch (IOException unused3) {
                gZIPInputStream2 = gZIPInputStream;
                if (gZIPInputStream2 != null) {
                    try {
                        gZIPInputStream2.close();
                    } catch (IOException unused4) {
                    }
                }
                return bArr;
            } catch (Throwable th2) {
                th = th2;
                gZIPInputStream2 = gZIPInputStream;
                if (gZIPInputStream2 != null) {
                    try {
                        gZIPInputStream2.close();
                    } catch (IOException unused5) {
                    }
                }
                throw th;
            }
        }
    }

    protected C6179gc(byte b, int i, byte[] bArr) {
        this((short) 1, b, i, bArr);
    }

    protected C6179gc(short s, byte b, int i, byte[] bArr) {
        this.f21707a = (short) 1;
        this.f21707a = s;
        this.f21705a = b;
        this.f21706a = i;
        this.f21708b = bArr;
    }

    /* renamed from: a */
    public static C6179gc m2791a(byte b, int i, byte[] bArr) {
        return new C6179gc(b, i, bArr);
    }

    /* renamed from: a */
    public static C6179gc m2787a(short s, byte b, int i, byte[] bArr) {
        return new C6179gc(s, b, i, bArr);
    }

    /* renamed from: a */
    public static C6179gc m2786a(byte[] bArr) {
        if (m2785a(bArr)) {
            ByteBuffer order = ByteBuffer.wrap(bArr).order(ByteOrder.BIG_ENDIAN);
            order.getInt();
            short s = order.getShort();
            byte b = order.get();
            int i = order.getInt();
            byte[] bArr2 = new byte[order.getInt()];
            order.get(bArr2);
            return m2787a(s, b, i, bArr2);
        }
        return m2791a((byte) 0, bArr.length, bArr);
    }

    /* renamed from: a */
    public static boolean m2785a(byte[] bArr) {
        byte[] bArr2 = f21704a;
        return m2784a(bArr2, bArr, bArr2.length);
    }

    /* renamed from: a */
    public static boolean m2784a(byte[] bArr, byte[] bArr2, int i) {
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
